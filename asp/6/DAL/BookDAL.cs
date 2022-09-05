using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Model;
using System.Data.SqlClient;

namespace DAL
{
    public class BookDAL
    {
        //登录
        public static user Login(string name)
        {
            user user = new user();
            string sql = "select * from [user] where username=@username";
            try
            {
                SqlDataReader dr = SqlHelper.GetReader(sql, new SqlParameter("@username", name));
                if (dr.Read())
                {
                    user.Userid = Convert.ToInt32(dr["userid"].ToString());
                    user.Username = dr["username"].ToString();
                    user.Userpwd = dr["userpwd"].ToString();
                    dr.Close();
                    return user;
                }
                else
                {
                    dr.Close();
                    return null;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }

        //查询所有书籍的数据
        public static DataTable GetBooks()
        {
            string sql = "select * from book";
            try
            {
                DataTable table = SqlHelper.GetDataSet(sql);
                return table;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }

        //通过ID查询书籍
        public static DataTable GetBooksByID(string id)
        {
            string sql = "select * from book where bookid  like '%" + id + "%'";
            try
            {
                DataTable table = SqlHelper.GetDataSet(sql);
                return table;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }

        //通过名称查询书籍
        public static DataTable GetBooksByName(string name)
        {
            string sql = "select * from book where bookname  like '%" + name + "%'";
            try
            {
                DataTable table = SqlHelper.GetDataSet(sql);
                return table;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }

        //通过书籍id删除书籍
        public static bool DelBooksByID(int id)
        {
            string sql = "delete book where bookid=" + id + "";
            try
            {
                int count = SqlHelper.ExecuteCommand(sql);
                if (count != 0)
                    return true;
                else
                    return false;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return false;
            }
        }

        //添加书籍
        public static bool AddBooks(Books book)
        {
            string sql = "insert book values(@bookname,@type,@autor,@pubname,@price,@page)";
            SqlParameter[] para = new SqlParameter[] {
              new SqlParameter("@bookname",book.Bookname),
              new SqlParameter("@type",book.Type),
              new SqlParameter("@autor",book.Autor),
              new SqlParameter("@pubname",book.Pubname),
              new SqlParameter("@price",book.Price),
              new SqlParameter("@page",book.Page)
          };
            try
            {
                int count = 0;
                count = SqlHelper.ExecuteCommand(sql, para);  // 执行SQL语句
                if (count != 0)
                    return true;
                else
                    return false;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return false;
            }

        }

    }
}
