using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Books
    {
        private int bookid;

        public int Bookid
        {
            get { return bookid; }
            set { bookid = value; }
        }
        private string bookname;

        public string Bookname
        {
            get { return bookname; }
            set { bookname = value; }
        }
        private string type;

        public string Type
        {
            get { return type; }
            set { type = value; }
        }
        private string autor;

        public string Autor
        {
            get { return autor; }
            set { autor = value; }
        }
        private string pubname;

        public string Pubname
        {
            get { return pubname; }
            set { pubname = value; }
        }
        private int price;

        public int Price
        {
            get { return price; }
            set { price = value; }
        }
        private int page;

        public int Page
        {
            get { return page; }
            set { page = value; }
        }

        
    }
}
