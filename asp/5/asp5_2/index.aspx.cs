using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "admin" && txtpwd.Text=="111")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Console.WriteLine("账号密码错误");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtpwd.Text = "";
    }
}