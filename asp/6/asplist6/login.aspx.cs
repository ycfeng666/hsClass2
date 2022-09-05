using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bool login = BookBLL.Login(txtname.Text.Trim(), txtpwd.Text.Trim());
            if (login)
            {
                Session["username"] = txtname.Text;
                Response.Redirect("index.aspx");//学生个人信息页面
            }
            else
            {
                LoginMessage.Text = "<font color=red>登录信息输入不正确，请重新输入！</font>";
            }
    }
}