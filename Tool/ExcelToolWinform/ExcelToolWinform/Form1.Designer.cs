namespace ExcelToolWinform
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.button1 = new System.Windows.Forms.Button();
            this.textSourceExcelPath = new System.Windows.Forms.TextBox();
            this.button2 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.textOutBytesFilePath = new System.Windows.Forms.TextBox();
            this.button3 = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.textOutCSharpFilePath = new System.Windows.Forms.TextBox();
            this.button4 = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.textOutLuaFilePath = new System.Windows.Forms.TextBox();
            this.button5 = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.textOutBytesFilePath_Server = new System.Windows.Forms.TextBox();
            this.button6 = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.textOutCSharpFilePath_Server = new System.Windows.Forms.TextBox();
            this.button7 = new System.Windows.Forms.Button();
            this.button8 = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.textSourceExcelOnePath = new System.Windows.Forms.TextBox();
            this.button9 = new System.Windows.Forms.Button();
            this.ToolStatus = new System.Windows.Forms.Label();
            this.button10 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(973, 70);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(105, 26);
            this.button1.TabIndex = 0;
            this.button1.Text = "选择文件夹";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // textSourceExcelPath
            // 
            this.textSourceExcelPath.Location = new System.Drawing.Point(170, 66);
            this.textSourceExcelPath.Name = "textSourceExcelPath";
            this.textSourceExcelPath.Size = new System.Drawing.Size(797, 25);
            this.textSourceExcelPath.TabIndex = 1;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(1103, 72);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(156, 26);
            this.button2.TabIndex = 2;
            this.button2.Text = "生成单个文件";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(23, 69);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(137, 15);
            this.label1.TabIndex = 7;
            this.label1.Text = "源excel路径文件夹";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(53, 166);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(107, 15);
            this.label3.TabIndex = 11;
            this.label3.Text = "bytes文件路径";
            // 
            // textOutBytesFilePath
            // 
            this.textOutBytesFilePath.Location = new System.Drawing.Point(170, 160);
            this.textOutBytesFilePath.Name = "textOutBytesFilePath";
            this.textOutBytesFilePath.Size = new System.Drawing.Size(797, 25);
            this.textOutBytesFilePath.TabIndex = 10;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(973, 164);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(105, 26);
            this.button3.TabIndex = 9;
            this.button3.Text = "选择文件夹";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(77, 208);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(83, 15);
            this.label2.TabIndex = 14;
            this.label2.Text = "c#脚本路径";
            // 
            // textOutCSharpFilePath
            // 
            this.textOutCSharpFilePath.Location = new System.Drawing.Point(170, 205);
            this.textOutCSharpFilePath.Name = "textOutCSharpFilePath";
            this.textOutCSharpFilePath.Size = new System.Drawing.Size(797, 25);
            this.textOutCSharpFilePath.TabIndex = 13;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(973, 208);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(105, 26);
            this.button4.TabIndex = 12;
            this.button4.Text = "选择文件夹";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(72, 259);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(91, 15);
            this.label4.TabIndex = 17;
            this.label4.Text = "lua脚本路径";
            // 
            // textOutLuaFilePath
            // 
            this.textOutLuaFilePath.Location = new System.Drawing.Point(170, 254);
            this.textOutLuaFilePath.Name = "textOutLuaFilePath";
            this.textOutLuaFilePath.Size = new System.Drawing.Size(797, 25);
            this.textOutLuaFilePath.TabIndex = 16;
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(973, 257);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(105, 26);
            this.button5.TabIndex = 15;
            this.button5.Text = "选择文件夹";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 302);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(157, 15);
            this.label5.TabIndex = 20;
            this.label5.Text = "服务器端表格文件路径";
            // 
            // textOutBytesFilePath_Server
            // 
            this.textOutBytesFilePath_Server.Location = new System.Drawing.Point(170, 299);
            this.textOutBytesFilePath_Server.Name = "textOutBytesFilePath_Server";
            this.textOutBytesFilePath_Server.Size = new System.Drawing.Size(797, 25);
            this.textOutBytesFilePath_Server.TabIndex = 19;
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(973, 303);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(105, 26);
            this.button6.TabIndex = 18;
            this.button6.Text = "选择文件夹";
            this.button6.UseVisualStyleBackColor = true;
            this.button6.Click += new System.EventHandler(this.button6_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(17, 350);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(143, 15);
            this.label6.TabIndex = 23;
            this.label6.Text = "服务器端c#脚本路径";
            // 
            // textOutCSharpFilePath_Server
            // 
            this.textOutCSharpFilePath_Server.Location = new System.Drawing.Point(170, 347);
            this.textOutCSharpFilePath_Server.Name = "textOutCSharpFilePath_Server";
            this.textOutCSharpFilePath_Server.Size = new System.Drawing.Size(797, 25);
            this.textOutCSharpFilePath_Server.TabIndex = 22;
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(973, 348);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(105, 26);
            this.button7.TabIndex = 21;
            this.button7.Text = "选择文件夹";
            this.button7.UseVisualStyleBackColor = true;
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // button8
            // 
            this.button8.Location = new System.Drawing.Point(1103, 321);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(156, 55);
            this.button8.TabIndex = 24;
            this.button8.Text = "生成所有文件";
            this.button8.UseVisualStyleBackColor = true;
            this.button8.Click += new System.EventHandler(this.button8_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(11, 27);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(152, 15);
            this.label7.TabIndex = 27;
            this.label7.Text = "源excel路径单个文件";
            // 
            // textSourceExcelOnePath
            // 
            this.textSourceExcelOnePath.Location = new System.Drawing.Point(170, 24);
            this.textSourceExcelOnePath.Name = "textSourceExcelOnePath";
            this.textSourceExcelOnePath.Size = new System.Drawing.Size(797, 25);
            this.textSourceExcelOnePath.TabIndex = 26;
            // 
            // button9
            // 
            this.button9.Location = new System.Drawing.Point(973, 28);
            this.button9.Name = "button9";
            this.button9.Size = new System.Drawing.Size(105, 26);
            this.button9.TabIndex = 25;
            this.button9.Text = "选择xls文件";
            this.button9.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.button9.UseVisualStyleBackColor = true;
            this.button9.Click += new System.EventHandler(this.button9_Click);
            // 
            // ToolStatus
            // 
            this.ToolStatus.AutoSize = true;
            this.ToolStatus.Location = new System.Drawing.Point(167, 411);
            this.ToolStatus.Name = "ToolStatus";
            this.ToolStatus.Size = new System.Drawing.Size(67, 15);
            this.ToolStatus.TabIndex = 28;
            this.ToolStatus.Text = "工具状态";
            // 
            // button10
            // 
            this.button10.Location = new System.Drawing.Point(1103, 208);
            this.button10.Name = "button10";
            this.button10.Size = new System.Drawing.Size(156, 55);
            this.button10.TabIndex = 29;
            this.button10.Text = "保存路径";
            this.button10.UseVisualStyleBackColor = true;
            this.button10.Click += new System.EventHandler(this.button10_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1271, 465);
            this.Controls.Add(this.button10);
            this.Controls.Add(this.ToolStatus);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.textSourceExcelOnePath);
            this.Controls.Add(this.button9);
            this.Controls.Add(this.button8);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.textOutCSharpFilePath_Server);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.textOutBytesFilePath_Server);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textOutLuaFilePath);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textOutCSharpFilePath);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textOutBytesFilePath);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.textSourceExcelPath);
            this.Controls.Add(this.button1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox textSourceExcelPath;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textOutBytesFilePath;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textOutCSharpFilePath;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textOutLuaFilePath;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textOutBytesFilePath_Server;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox textOutCSharpFilePath_Server;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox textSourceExcelOnePath;
        private System.Windows.Forms.Button button9;
        private System.Windows.Forms.Label ToolStatus;
        private System.Windows.Forms.Button button10;
    }
}

