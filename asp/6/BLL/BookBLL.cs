using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Model;
using System.Data;

namespace BLL
{
    public class BookBLL
    {
        //登录
        public static bool Login(string name, string pwd)
        {
            user user = BookDAL.Login(name);
            if (user == null)
            {
                //用户不存在               
                return false;
            }
            else
            {
                if (user.Userpwd.Equals(pwd))
                {
                    return true;
                }
                else
                {
                    //密码或账户类型不正确                   
                    return false;
                }
            }
        }

        //查询所有书籍的数据
        public static DataTable GetBooks()
        {
            return BookDAL.GetBooks();
        }

        //通过ID查询书籍
        public static DataTable GetBooksByID(string id)
        {
            return BookDAL.GetBooksByID(id);
        }

        //通过名称查询书籍
        public static DataTable GetBooksByName(string name)
        {
            return BookDAL.GetBooksByName(name);
        }

        //通过书籍id删除书籍
        public static bool DelBooksByID(int id)
        {
            return BookDAL.DelBooksByID(id);
        }

        //添加书籍
        public static bool AddBooks(string bookname,string type,string autor,string pubname,string price,string page)
        {
            Books book = new Books();
            book.Bookname = bookname;
            book.Type = type;
            book.Autor = autor;
            book.Pubname = pubname;
            book.Price = Convert.ToInt32(price);
            book.Page = Convert.ToInt32(page);
            return BookDAL.AddBooks(book);
        }

    }
}
