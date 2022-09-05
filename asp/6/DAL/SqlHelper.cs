using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace DAL
{
    public static class SqlHelper
    {

        private static SqlConnection connection;
        public static SqlConnection Connection
        {
            get 
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
                if (connection == null)
                {
                    connection = new SqlConnection(connectionString);
                    connection.Open();
                }
                else if (connection.State == System.Data.ConnectionState.Closed)
                {
                    connection.Open();
                }
                else if (connection.State == System.Data.ConnectionState.Broken)
                {
                    connection.Close();
                    connection.Open();
                }
                return connection;
            }
        }

       //实现数据库的添加、修改、删除
        public static int ExecuteCommand(string safeSql)
        {
            SqlCommand cmd = new SqlCommand(safeSql, Connection);
            int result = cmd.ExecuteNonQuery();
            return result;
        }
        //实现数据库的添加、修改、删除
        public static int ExecuteCommand(string sql, params SqlParameter[] values)
        {
            SqlCommand cmd = new SqlCommand(sql, Connection);
            cmd.Parameters.AddRange(values);
            return cmd.ExecuteNonQuery();
        }
        //实现数据库的添加
        public static int GetScalar(string safeSql)
        {
            SqlCommand cmd = new SqlCommand(safeSql, Connection);
            int result = Convert.ToInt32(cmd.ExecuteScalar());
            return result;
        }
        //实现数据库的添加
        public static int GetScalar(string sql, params SqlParameter[] values)
        {
            SqlCommand cmd = new SqlCommand(sql, Connection);
            cmd.Parameters.AddRange(values);
            int result = Convert.ToInt32(cmd.ExecuteScalar());
            return result;
        }

        //实现数据库的查询，返回SqlDataReader对象
        public static SqlDataReader GetReader(string safeSql)
        {
            SqlCommand cmd = new SqlCommand(safeSql, Connection);
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }

        //实现数据库的查询，返回SqlDataReader对象
        public static SqlDataReader GetReader(string sql, params SqlParameter[] values)
        {
            SqlCommand cmd = new SqlCommand(sql, Connection);
            cmd.Parameters.AddRange(values);
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }

        //实现数据库的查询，返回DataTable对象
        public static DataTable GetDataSet(string safeSql)
        {
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand(safeSql, Connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            return ds.Tables[0];
        }

        //实现数据库的查询，返回DataTable对象
        public static DataTable GetDataSet(string sql, params SqlParameter[] values)
        {
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand(sql, Connection);
            cmd.Parameters.AddRange(values);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            return ds.Tables[0];
        }

    }
}
