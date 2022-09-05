using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] != null)
                lblWelcome.Text = "欢迎用户：" + Session["username"].ToString() + "光临本站！";
            BindGridView();
        }
    }
    protected void BindGridView()
    {
        gvBooks.DataSource = BookBLL.GetBooks().DefaultView;
        gvBooks.DataBind();
    }
    //查询
    protected void btnsel_Click(object sender, EventArgs e)
    {
        switch (RadioButtonList2.SelectedValue)
        {
            case "sid":
                gvBooks.DataSource = BookBLL.GetBooksByID(txtbooks.Text.Trim()).DefaultView;
                gvBooks.DataBind();
                break;
            case "sname":
                gvBooks.DataSource = BookBLL.GetBooksByName(txtbooks.Text.Trim()).DefaultView;
                gvBooks.DataBind();
                break;
        }
    }
    //删除
    protected void gvBooks_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string name = e.CommandName;
        int id = Convert.ToInt32(e.CommandArgument);
        if (name == "delect")
        {
            bool dt= BookBLL.DelBooksByID(id);
            if (dt)
            {
                delmain.Text = "<font color=red>删除成功！</font>";
                BindGridView();
            }
            else
            {
                delmain.Text = "<font color=red>删除失败！</font>";
            }
        }
    }
}