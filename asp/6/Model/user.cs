using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class user
    {
        private int userid;

        public int Userid
        {
            get { return userid; }
            set { userid = value; }
        }
        private string username;

        public string Username
        {
            get { return username; }
            set { username = value; }
        }
        private string userpwd;

        public string Userpwd
        {
            get { return userpwd; }
            set { userpwd = value; }
        }
    }
}
