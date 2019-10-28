using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public static class DBConn
{
    private static string m_WorldTheAutumn_DBGameServer;

    public static string WorldTheAutumn_DBGameServer
    {
        get
        {
            if (string.IsNullOrEmpty(m_WorldTheAutumn_DBGameServer))
            {
                m_WorldTheAutumn_DBGameServer = System.Configuration.ConfigurationManager.ConnectionStrings["WorldTheAutumn_DBGameServer"].ConnectionString;
            }
            return m_WorldTheAutumn_DBGameServer;
        }
    }
}