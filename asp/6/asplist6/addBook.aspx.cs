using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class addBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] != null)
                lblWelcome.Text = "欢迎用户：" + Session["username"].ToString() + "光临本站！";
        }
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((txtname == null) && (txtautor == null) && (txtpage == null) && (txtprice == null) && (txtpubname == null) && (txttype == null))
        {
            labse.Text = "<font color='red'>添加失败!</font>";
        }
        else
        {
            bool dt = BookBLL.AddBooks(txtname.Text, txttype.Text, txtautor.Text, txtpubname.Text, txtprice.Text, txtpage.Text);
            if (dt)
            {
                labse.Text = "<font color='red'>添加成功!</font>";
            }
            else
            {
                labse.Text = "<font color='red'>添加失败!</font>";
            }
        }
    }
}