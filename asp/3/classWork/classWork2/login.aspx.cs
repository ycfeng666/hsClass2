using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace classWork2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Response.Redirect("main.aspx");
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string UserName = txtUser.Text.Trim();
            if (UserName != string.Empty) {
                Session["User"] = UserName;
                ArrayList UserList = new ArrayList();
                string info = string.Format("{0}/{1}", UserName, Request.UserHostAddress.ToString());
                if (Application["UserList"] == null)
                {                                        
                    UserList.Add(info);
                    Application["UserList"] = UserList;
                }
                else {
                    UserList = (ArrayList)Application["UserList"];
                    UserList.Add(info);
                    Application["UserList"] = UserList;
                }
                Response.Redirect("chat.aspx");
            }
        }
    }
}