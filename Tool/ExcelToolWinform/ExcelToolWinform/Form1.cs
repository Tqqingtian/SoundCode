using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Text;
using System.Windows.Forms;
using System.Data.OleDb;
using System.Diagnostics;

namespace ExcelToolWinform
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            LoadConfig();
            

        }
        /// <summary>
        /// 加载配置文件
        /// </summary>
        private void LoadConfig()
        {
            ToolStatus.Text = "start read flie";
            string configPath = Application.StartupPath + "/config.txt";
            if (File.Exists(configPath))
            {
                string str = "";
                using (FileStream fs = new FileStream(configPath, FileMode.Open))
                {
                    using (StreamReader sr = new StreamReader(fs))
                    {
                        str = sr.ReadToEnd();
                    }
                }
                if (!string.IsNullOrEmpty(str))
                {
                    ToolStatus.Text = "file is not null";
                    string[] arr = str.Split('\n');
                    if (arr.Length >= 7)
                    {
                        textSourceExcelOnePath.Text = arr[0];
                        textSourceExcelPath.Text = arr[1];
                        textOutBytesFilePath.Text = arr[2];
                        textOutCSharpFilePath.Text = arr[3];
                        textOutLuaFilePath.Text = arr[4];
                        textOutBytesFilePath_Server.Text = arr[5];
                        textOutCSharpFilePath_Server.Text = arr[6];
                        for (int i = 0; i < arr.Length; i++)
                        {
                            Debug.WriteLine(arr[i]);
                        }
                    }
                    
                }

            }
            else
            {
                File.Create(configPath);
            }
        }


        /// <summary>
        /// 读取文件夹
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public List<string> ReadFolder(string path)
        {
            string[] arr = Directory.GetFiles(path);

            List<string> lst = new List<string>();

            int len = arr.Length;
            for (int i = 0; i < len; i++)
            {
                string filePath = arr[i];
                Debug.WriteLine(filePath);
                FileInfo file = new FileInfo(filePath);
                if (file.Name.IndexOf("~$") > -1)
                {
                    continue;
                }
                if (file.Extension.Equals(".xls") || file.Extension.Equals(".xlsx"))
                {
                    ReadData(file.Extension.Equals(".xls"), file.FullName, file.Name.Substring(0, file.Name.LastIndexOf('.')));
                }
            }
            return lst;
        }

        /// <summary>
        /// 读取文件
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public string ReadFiles(string path)
        {

            string filePath = path;
            FileInfo file = new FileInfo(filePath);
            if (file.Name.IndexOf("~$") <= -1)
            {
                if (file.Extension.Equals(".xls") || file.Extension.Equals(".xlsx"))
                {
                    ReadData(file.Extension.Equals(".xls"), file.FullName, file.Name.Substring(0, file.Name.LastIndexOf('.')));
                }
            }
            return filePath;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="isXls"></param>
        /// <param name="filePath"></param>
        /// <param name="fileName"></param>
        /// <param name="isFile"></param>
        private void ReadData(bool isXls, string filePath, string fileName,bool isFile = false)
        {

            try
            {
                if (string.IsNullOrEmpty(filePath)) return;

                //把表格复制一下
                string newPath = filePath + ".temp";

                File.Copy(filePath, newPath, true);

                string tableName = "Sheet1";
                string strConn = "";
                if (isXls)
                {
                    strConn = "Provider=Microsoft.Jet.OLEDB.4.0;" + "Data Source=" + newPath + ";" + "Extended Properties='Excel 8.0;HDR=NO;IMEX=1';";
                }
                else
                {
                    strConn = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source =" + newPath + ";Extended Properties='Excel 12.0;HDR=NO;IMEX=1'";
                }

                DataTable dt = null;

                string strExcel = "";
                OleDbDataAdapter myCommand = null;
                DataSet ds = null;
                strExcel = string.Format("select * from [{0}$]", tableName);
                myCommand = new OleDbDataAdapter(strExcel, strConn);
                ds = new DataSet();
                myCommand.Fill(ds, "table1");
                dt = ds.Tables[0];
                myCommand.Dispose();

                File.Delete(newPath);

                if (fileName.Equals("Sys_Localization", StringComparison.CurrentCultureIgnoreCase))
                {
                    //多语言表 单独处理*
                    CreateLocalization(fileName, dt);
                }
                else
                {
                    CreateData(fileName, dt);
                }
            }
            catch (Exception e)
            {

                ToolStatus.Text = e.Message;
            }

        }

        #region 创建普通表
        //表头
        static string[,] tableHeadArr = null;

        private void CreateData(string fileName, DataTable dt)
        {
            try
            {
                //数据格式 行数 列数 二维数组每项的值 这里不做判断 都用string存储
                tableHeadArr = null;

                byte[] buffer = null;

                using (MMO_MemoryStream ms = new MMO_MemoryStream())
                {
                    int rows = dt.Rows.Count;
                    int columns = dt.Columns.Count;

                    tableHeadArr = new string[columns, 3];

                    ms.WriteInt(rows - 3); //减去表头的三行
                    ms.WriteInt(columns);
                    for (int i = 0; i < rows; i++)
                    {
                        for (int j = 0; j < columns; j++)
                        {
                            if (i < 3)
                            {
                                tableHeadArr[j, i] = dt.Rows[i][j].ToString().Trim();
                            }
                            else
                            {
                                string type = tableHeadArr[j, 1];
                                string value = dt.Rows[i][j].ToString().Trim();

                                //Console.WriteLine("type=" + type + "||" + "value=" + value);

                                switch (type.ToLower())
                                {
                                    case "int":
                                        ms.WriteInt(string.IsNullOrEmpty(value) ? 0 : int.Parse(value));
                                        break;
                                    case "long":
                                        ms.WriteLong(string.IsNullOrEmpty(value) ? 0 : long.Parse(value));
                                        break;
                                    case "short":
                                        ms.WriteShort(string.IsNullOrEmpty(value) ? (short)0 : short.Parse(value));
                                        break;
                                    case "float":
                                        ms.WriteFloat(string.IsNullOrEmpty(value) ? 0 : float.Parse(value));
                                        break;
                                    case "byte":
                                        ms.WriteByte(string.IsNullOrEmpty(value) ? (byte)0 : byte.Parse(value));
                                        break;
                                    case "bool":
                                        ms.WriteBool(string.IsNullOrEmpty(value) ? false : bool.Parse(value));
                                        break;
                                    case "double":
                                        ms.WriteDouble(string.IsNullOrEmpty(value) ? 0 : double.Parse(value));
                                        break;
                                    default:
                                        ms.WriteUTF8String(value);
                                        break;
                                }
                            }
                        }
                    }
                    buffer = ms.ToArray();
                }

                //------------------
                //写入文件
                //------------------
                {
                    FileStream fs = new FileStream(string.Format("{0}\\{1}", textOutBytesFilePath.Text, fileName + ".bytes"), FileMode.Create);
                    fs.Write(buffer, 0, buffer.Length);
                    fs.Close();

                    ToolStatus.Text = "客户端表格=>" + fileName + " 生成bytes文件完毕";
                }

                {
                    FileStream fs = new FileStream(string.Format("{0}\\{1}", textOutBytesFilePath_Server.Text, fileName + ".bytes"), FileMode.Create);
                    fs.Write(buffer, 0, buffer.Length);
                    fs.Close();

                    ToolStatus.Text = "服务器端表格=>" + fileName + " 生成bytes文件完毕";
                }

                CreateEntity(fileName, tableHeadArr);
                ToolStatus.Text = "客户端表格=>" + fileName + " 生成实体脚本完毕";

                CreateServerEntity(fileName, tableHeadArr);
                ToolStatus.Text = "服务器表格=>" + fileName + " 生成实体脚本完毕";


                CreateDBModel(fileName, tableHeadArr);
                ToolStatus.Text = "客户端表格=>" + fileName + " 生成数据访问脚本完毕";


                CreateServerDBModel(fileName, tableHeadArr);
                ToolStatus.Text = "服务器表格=>" + fileName + " 生成数据访问脚本完毕";
            }
            catch (Exception ex)
            {
                ToolStatus.Text = "表格=>" + fileName + " 处理失败:" + ex.Message;
            }
        }

        /// <summary>
        /// 创建客户端实体
        /// </summary>
        private void CreateEntity(string fileName, string[,] dataArr)
        {
            if (dataArr == null) return;

            StringBuilder sbr = new StringBuilder();
            sbr.Append("\r\n");
            sbr.Append("//作    者：北冰洋 \r\n");
            sbr.AppendFormat("//创建时间：{0}\r\n", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
            sbr.Append("//备    注：此代码为工具生成 请勿手工修改\r\n");
            sbr.Append("using System.Collections;\r\n");
            sbr.Append("using TQ;\r\n");
            sbr.Append("\r\n");
            sbr.Append("/// <summary>\r\n");
            sbr.AppendFormat("/// {0}实体\r\n", fileName);
            sbr.Append("/// </summary>\r\n");
            sbr.AppendFormat("public partial class {0}Entity : DataTableEntityBase\r\n", fileName);
            sbr.Append("{\r\n");

            for (int i = 0; i < dataArr.GetLength(0); i++)
            {
                if (i == 0) continue;
                sbr.Append("    /// <summary>\r\n");
                sbr.AppendFormat("    /// {0}\r\n", dataArr[i, 2]);
                sbr.Append("    /// </summary>\r\n");
                sbr.AppendFormat("    public {0} {1};\r\n", dataArr[i, 1], dataArr[i, 0]);
                sbr.Append("\r\n");
            }

            sbr.Append("}\r\n");


            using (FileStream fs = new FileStream(string.Format("{0}/{1}Entity.cs", textOutCSharpFilePath.Text, fileName), FileMode.Create))
            {
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    sw.Write(sbr.ToString());
                }
            }

            //=======================创建Lua的实体
            sbr.Clear();

            sbr.AppendFormat("{0}Entity = {{ ", fileName);

            for (int i = 0; i < dataArr.GetLength(0); i++)
            {

                if (i == dataArr.GetLength(0) - 1)
                {
                    if (dataArr[i, 1].Equals("string", StringComparison.CurrentCultureIgnoreCase))
                    {
                        sbr.AppendFormat("{0} = \"\"", dataArr[i, 0]);
                    }
                    else
                    {
                        sbr.AppendFormat("{0} = 0", dataArr[i, 0]);
                    }
                }
                else
                {
                    if (dataArr[i, 1].Equals("string", StringComparison.CurrentCultureIgnoreCase))
                    {
                        sbr.AppendFormat("{0} = \"\", ", dataArr[i, 0]);
                    }
                    else
                    {
                        sbr.AppendFormat("{0} = 0, ", dataArr[i, 0]);
                    }
                }
            }
            sbr.Append(" }\r\n");

            sbr.Append("\r\n");
            sbr.AppendFormat("{0}Entity.__index = {0}Entity;\r\n", fileName);
            sbr.Append("\r\n");
            sbr.AppendFormat("function {0}Entity.New(", fileName);
            for (int i = 0; i < dataArr.GetLength(0); i++)
            {
                if (i == dataArr.GetLength(0) - 1)
                {
                    sbr.AppendFormat("{0}", dataArr[i, 0]);
                }
                else
                {
                    sbr.AppendFormat("{0}, ", dataArr[i, 0]);
                }
            }
            sbr.Append(")\r\n");
            sbr.Append("    local self = { };\r\n");
            sbr.Append("");
            sbr.AppendFormat("    setmetatable(self, {0}Entity);\r\n", fileName);
            sbr.Append("\r\n");
            for (int i = 0; i < dataArr.GetLength(0); i++)
            {
                sbr.AppendFormat("    self.{0} = {0};\r\n", dataArr[i, 0]);
            }
            sbr.Append("\r\n");
            sbr.Append("    return self;\r\n");
            sbr.Append("end");

            using (FileStream fs = new FileStream(string.Format("{0}/{1}Entity.bytes", textOutLuaFilePath.Text, fileName), FileMode.Create))
            {
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    sw.Write(sbr.ToString());
                }
            }
        }

        /// <summary>
        /// 创建服务器端实体
        /// </summary>
        private void CreateServerEntity(string fileName, string[,] dataArr)
        {
            if (dataArr == null) return;

            StringBuilder sbr = new StringBuilder();
            sbr.Append("\r\n");
            sbr.Append("//作    者：北冰洋 \r\n");
            sbr.AppendFormat("//创建时间：{0}\r\n", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
            sbr.Append("//备    注：此代码为工具生成 请勿手工修改\r\n");
            sbr.Append("using System.Collections;\r\n");
            sbr.Append("\r\n");
            sbr.Append("/// <summary>\r\n");
            sbr.AppendFormat("/// {0}实体\r\n", fileName);
            sbr.Append("/// </summary>\r\n");
            sbr.AppendFormat("public partial class {0}Entity : DataTableEntityBase\r\n", fileName);
            sbr.Append("{\r\n");

            for (int i = 0; i < dataArr.GetLength(0); i++)
            {
                if (i == 0) continue;
                sbr.Append("    /// <summary>\r\n");
                sbr.AppendFormat("    /// {0}\r\n", dataArr[i, 2]);
                sbr.Append("    /// </summary>\r\n");
                sbr.AppendFormat("    public {0} {1};\r\n", dataArr[i, 1], dataArr[i, 0]);
                sbr.Append("\r\n");
            }

            sbr.Append("}\r\n");


            using (FileStream fs = new FileStream(string.Format("{0}/{1}Entity.cs", textOutCSharpFilePath_Server.Text, fileName), FileMode.Create))
            {
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    sw.Write(sbr.ToString());
                }
            }
        }

        /// <summary>
        /// 创建客户端数据管理类
        /// </summary>
        private void CreateDBModel(string fileName, string[,] dataArr)
        {
            if (dataArr == null) return;

            StringBuilder sbr = new StringBuilder();
            sbr.Append("\r\n");
            sbr.Append("//作    者：北冰洋 \r\n");
            sbr.AppendFormat("//创建时间：{0}\r\n", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
            sbr.Append("//备    注：此代码为工具生成 请勿手工修改\r\n");
            sbr.Append("using System.Collections;\r\n");
            sbr.Append("using System.Collections.Generic;\r\n");
            sbr.Append("using System;\r\n");
            sbr.Append("using TQ;\r\n");
            sbr.Append("\r\n");
            sbr.Append("/// <summary>\r\n");
            sbr.AppendFormat("/// {0}数据管理\r\n", fileName);
            sbr.Append("/// </summary>\r\n");
            sbr.AppendFormat("public partial class {0}DBModel : DataTableDBModelBase<{0}DBModel, {0}Entity>\r\n", fileName);
            sbr.Append("{\r\n");

            sbr.Append("    /// <summary>\r\n");
            sbr.Append("    /// 文件名称\r\n");
            sbr.Append("    /// </summary>\r\n");
            sbr.AppendFormat("    public override string DataTableName {{ get {{ return \"{0}\"; }} }}\r\n", fileName);
            sbr.Append("\r\n");


            sbr.Append("    /// <summary>\r\n");
            sbr.Append("    /// 加载列表\r\n");
            sbr.Append("    /// </summary>\r\n");
            sbr.Append("    protected override void LoadList(MMO_MemoryStream ms)\r\n");
            sbr.Append("    {\r\n");
            sbr.Append("        int rows = ms.ReadInt();\r\n");
            sbr.Append("        int columns = ms.ReadInt();\r\n");
            sbr.Append("\r\n");
            sbr.Append("        for (int i = 0; i < rows; i++)\r\n");
            sbr.Append("        {\r\n");
            sbr.AppendFormat("            {0}Entity entity = new {0}Entity();\r\n", fileName);

            for (int i = 0; i < dataArr.GetLength(0); i++)
            {
                if (dataArr[i, 1].Equals("byte", StringComparison.CurrentCultureIgnoreCase))
                {
                    sbr.AppendFormat("            entity.{0} = (byte)ms.Read{1}();\r\n", dataArr[i, 0], ChangeTypeName(dataArr[i, 1]));
                }
                else
                {
                    sbr.AppendFormat("            entity.{0} = ms.Read{1}();\r\n", dataArr[i, 0], ChangeTypeName(dataArr[i, 1]));
                }
            }

            sbr.Append("\r\n");
            sbr.Append("            m_List.Add(entity);\r\n");
            sbr.Append("            m_Dic[entity.Id] = entity;\r\n");
            sbr.Append("        }\r\n");
            sbr.Append("    }\r\n");

            sbr.Append("}");
            using (FileStream fs = new FileStream(string.Format("{0}/{1}DBModel.cs", textOutCSharpFilePath.Text, fileName), FileMode.Create))
            {
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    sw.Write(sbr.ToString());
                }
            }

            //===============生成lua的DBModel
            sbr.Clear();
            sbr.Append("--数据访问\r\n");
            sbr.AppendFormat("{0}DBModel = {{ }}\r\n", fileName);
            sbr.Append("\r\n");
            sbr.AppendFormat("local this = {0}DBModel;\r\n", fileName);
            sbr.Append("\r\n");
            sbr.AppendFormat("local {0}Table = {{ }}; --定义表格\r\n", fileName.ToLower());
            sbr.Append("\r\n");
            sbr.AppendFormat("function {0}DBModel.LoadList()\r\n", fileName);
            //sbr.AppendFormat("    local ms = CS.TQ.GameEntry.Lua:LoadDataTable(\"{0}\");\r\n", fileName);
            sbr.Append("    GameInit.AddTotalLoadTableCount();\r\n");
            sbr.AppendFormat("    CS.TQ.GameEntry.Lua:LoadDataTable(\"{0}\",this.LoadFormMS);\r\n", fileName);
            sbr.Append("end\r\n");
            sbr.Append("\r\n");
            sbr.AppendFormat("function {0}DBModel.LoadFormMS(ms)\r\n", fileName);
            sbr.Append("    local rows=ms:ReadInt();\r\n");
            sbr.Append("    ms:ReadInt();\r\n");
            sbr.Append("\r\n");
            sbr.Append("for i = 0, rows, 1 do\r\n");
            sbr.AppendFormat("        {0}Table[#{0}Table + 1] = {1}Entity.New(\r\n", fileName.ToLower(), fileName);

            string str = "";
            for (int i = 0; i < dataArr.GetLength(0); i++)
            {
                if (dataArr[i, 1].Equals("byte", StringComparison.CurrentCultureIgnoreCase))
                {
                    str += string.Format("                ms:Read{1}(),\r\n", dataArr[i, 0], ChangeTypeName(dataArr[i, 1]));
                }
                else
                {
                    str += string.Format("                ms:Read{1}(),\r\n", dataArr[i, 0], ChangeTypeName(dataArr[i, 1]));
                }
            }
            str = str.TrimEnd(',', '\r', '\n');
            sbr.AppendFormat("{0}\r\n", str);
            sbr.Append("        );\r\n");
            sbr.Append("    end\r\n");
            sbr.Append("GameInit.LoadOneTableComplete();");
            sbr.Append("\r\n");
            sbr.Append("end\r\n");
            sbr.Append("\r\n");
            sbr.AppendFormat("function {0}DBModel.GetList()\r\n", fileName);
            sbr.AppendFormat("    return {0}Table;\r\n", fileName.ToLower());
            sbr.Append("end");
            sbr.Append("\r\n");
            sbr.Append("\r\n");
            sbr.AppendFormat("function {0}DBModel.GetEntity(id)\r\n", fileName);
            sbr.AppendFormat("    local ret = nil;\r\n");
            sbr.AppendFormat("    for i = 1, #{0}Table, 1 do\r\n", fileName.ToLower());
            sbr.AppendFormat("        if ({0}Table[i].Id == id) then\r\n", fileName.ToLower());
            sbr.AppendFormat("            ret = {0}Table[i];\r\n", fileName.ToLower());
            sbr.AppendFormat("            break;\r\n");
            sbr.AppendFormat("        end\r\n");
            sbr.AppendFormat("    end\r\n");
            sbr.AppendFormat("    return ret;\r\n");
            sbr.AppendFormat("end");

            using (FileStream fs = new FileStream(string.Format("{0}/{1}DBModel.bytes", textOutLuaFilePath.Text, fileName), FileMode.Create))
            {
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    sw.Write(sbr.ToString());
                }
            }
        }

        /// <summary>
        /// 创建服务器端数据管理类
        /// </summary>
        private void CreateServerDBModel(string fileName, string[,] dataArr)
        {
            if (dataArr == null) return;

            StringBuilder sbr = new StringBuilder();
            sbr.Append("\r\n");
            sbr.Append("//作    者：北冰洋 \r\n");
            sbr.AppendFormat("//创建时间：{0}\r\n", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
            sbr.Append("//备    注：此代码为工具生成 请勿手工修改\r\n");
            sbr.Append("using System.Collections;\r\n");
            sbr.Append("using System.Collections.Generic;\r\n");
            sbr.Append("using System;\r\n");
            sbr.Append("\r\n");
            sbr.Append("/// <summary>\r\n");
            sbr.AppendFormat("/// {0}数据管理\r\n", fileName);
            sbr.Append("/// </summary>\r\n");
            sbr.AppendFormat("public partial class {0}DBModel : DataTableDBModelBase<{0}DBModel, {0}Entity>\r\n", fileName);
            sbr.Append("{\r\n");

            sbr.Append("    /// <summary>\r\n");
            sbr.Append("    /// 文件名称\r\n");
            sbr.Append("    /// </summary>\r\n");
            sbr.AppendFormat("    public override string DataTableName {{ get {{ return \"{0}\"; }} }}\r\n", fileName);
            sbr.Append("\r\n");


            sbr.Append("    /// <summary>\r\n");
            sbr.Append("    /// 加载列表\r\n");
            sbr.Append("    /// </summary>\r\n");
            sbr.Append("    protected override void LoadList(MMO_MemoryStream ms)\r\n");
            sbr.Append("    {\r\n");
            sbr.Append("        int rows = ms.ReadInt();\r\n");
            sbr.Append("        int columns = ms.ReadInt();\r\n");
            sbr.Append("\r\n");
            sbr.Append("        for (int i = 0; i < rows; i++)\r\n");
            sbr.Append("        {\r\n");
            sbr.AppendFormat("            {0}Entity entity = new {0}Entity();\r\n", fileName);

            for (int i = 0; i < dataArr.GetLength(0); i++)
            {
                if (dataArr[i, 1].Equals("byte", StringComparison.CurrentCultureIgnoreCase))
                {
                    sbr.AppendFormat("            entity.{0} = (byte)ms.Read{1}();\r\n", dataArr[i, 0], ChangeTypeName(dataArr[i, 1]));
                }
                else
                {
                    sbr.AppendFormat("            entity.{0} = ms.Read{1}();\r\n", dataArr[i, 0], ChangeTypeName(dataArr[i, 1]));
                }
            }

            sbr.Append("\r\n");
            sbr.Append("            m_List.Add(entity);\r\n");
            sbr.Append("            m_Dic[entity.Id] = entity;\r\n");
            sbr.Append("        }\r\n");
            sbr.Append("    }\r\n");

            sbr.Append("}");
            using (FileStream fs = new FileStream(string.Format("{0}/{1}DBModel.cs", textOutCSharpFilePath_Server.Text, fileName), FileMode.Create))
            {
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    sw.Write(sbr.ToString());
                }
            }
        }

        private static string ChangeTypeName(string type)
        {
            string str = string.Empty;

            switch (type)
            {
                case "byte":
                    str = "Byte";
                    break;
                case "int":
                    str = "Int";
                    break;
                case "short":
                    str = "Short";
                    break;
                case "long":
                    str = "Long";
                    break;
                case "float":
                    str = "Float";
                    break;
                case "string":
                    str = "UTF8String";
                    break;
            }

            return str;
        }
        #endregion

        #region 创建多语言表
        private void CreateLocalization(string fileName, DataTable dt)
        {
            try
            {
                int rows = dt.Rows.Count;
                int columns = dt.Columns.Count;

                int newcolumns = columns - 3; //减去前三列 后面表示有多少种语言

                int currKeyColumn = 2; //当前的Key列
                int currValueColumn = 3; //当前的值列

                tableHeadArr = new string[columns, 3];

                while (newcolumns > 0)
                {
                    newcolumns--;

                    #region 写入文件
                    byte[] buffer = null;

                    using (MMO_MemoryStream ms = new MMO_MemoryStream())
                    {
                        ms.WriteInt(rows - 3); //减去表头的三行
                        ms.WriteInt(2); //多语言表 只有2列 Key Value

                        for (int i = 0; i < rows; i++)
                        {
                            for (int j = 0; j < columns; j++)
                            {
                                if (i < 3)
                                {
                                    tableHeadArr[j, i] = dt.Rows[i][j].ToString().Trim();
                                }
                                else
                                {
                                    if (j == currKeyColumn)
                                    {
                                        //写入key
                                        string value = dt.Rows[i][j].ToString().Trim();
                                        ms.WriteUTF8String(value);
                                    }
                                    else if (j == currValueColumn)
                                    {
                                        //写入value
                                        string value = dt.Rows[i][j].ToString().Trim();
                                        ms.WriteUTF8String(value);
                                    }
                                }
                            }
                        }
                        buffer = ms.ToArray();
                    }

                    //------------------
                    //写入文件
                    //------------------
                    FileStream fs = new FileStream(string.Format("{0}/Localization/{1}", textOutBytesFilePath.Text, tableHeadArr[currValueColumn, 0] + ".bytes"), FileMode.Create);
                    fs.Write(buffer, 0, buffer.Length);
                    fs.Close();

                    currValueColumn++;
                    #endregion
                }
            }
            catch (Exception ex)
            {
                ToolStatus.Text = "表格=>" + fileName + " 处理失败:" + ex.Message;
            }
        }

        #endregion


        private void button2_Click(object sender, EventArgs e)
        {
            ReadFiles(textSourceExcelOnePath.Text);
        }

        private void button8_Click(object sender, EventArgs e)
        {
            ReadFolder(textSourceExcelPath.Text);
        }

        /// <summary>
        /// 保存路径
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void button10_Click(object sender, EventArgs e)
        {
            string configPath = Application.StartupPath + "/config.txt";
            if (File.Exists(configPath))
            {
                //如果配置文件存在 先删除
                File.Delete(configPath);
            }

            //创建文本
            StringBuilder sbr = new StringBuilder();
            sbr.Append(textSourceExcelOnePath.Text);
            sbr.Append("\n");
            sbr.Append(textSourceExcelPath.Text);
            sbr.Append("\n");
            sbr.Append(textOutBytesFilePath.Text);
            sbr.Append("\n");
            sbr.Append(textOutCSharpFilePath.Text);
            sbr.Append("\n");
            sbr.Append(textOutLuaFilePath.Text);
            sbr.Append("\n");
            sbr.Append(textOutBytesFilePath_Server.Text);
            sbr.Append("\n");
            sbr.Append(textOutCSharpFilePath_Server.Text);

            using (FileStream fs = new FileStream(configPath, FileMode.Create))
            {
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    sw.Write(sbr.ToString());
                }
            }
        }
        private void SelectionPath(TextBox textBox , bool isFlie =false)
        {
            if (isFlie)
            {
                OpenFileDialog openFileDialog1 = new OpenFileDialog();     //显示选择文件对话框
                openFileDialog1.InitialDirectory = textBox.Text;
                openFileDialog1.Filter = "txt files (*.xls)|*.txt|All files (*.*)|*.*";
                openFileDialog1.FilterIndex = 2;
                openFileDialog1.RestoreDirectory = true;

                if (openFileDialog1.ShowDialog() == DialogResult.OK)
                {
                   
                    textBox.Text = openFileDialog1.FileName;          //显示文件路径
                }

            }
            else
            {

                FolderBrowserDialog dialog = new FolderBrowserDialog();
                dialog.Description = "请选择文件夹";
                if (dialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    if (string.IsNullOrEmpty(dialog.SelectedPath))
                    {
                        Debug.WriteLine("文件夹路径不能为空", "提示", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                        return;
                    }
                    textBox.Text = dialog.SelectedPath + "\\";
                }
            }
           
        }

        #region 选择文件
        private void button9_Click(object sender, EventArgs e)
        {
            ToolStatus.Text = "select flie path" + textSourceExcelOnePath.Text;
            SelectionPath(textSourceExcelOnePath,true);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            SelectionPath(textSourceExcelPath);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            SelectionPath(textOutBytesFilePath);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            SelectionPath(textOutCSharpFilePath);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            SelectionPath(textOutLuaFilePath);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            SelectionPath(textOutBytesFilePath_Server);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            SelectionPath(textOutCSharpFilePath_Server);
        }

        #endregion


    }
}
