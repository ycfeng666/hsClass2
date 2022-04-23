using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace classWork1
{
    public partial class login : System.Web.UI.Page
    {
        string url = "/main.aspx";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["u_Name"] != null && Request.Cookies["u_Pass"] != null) {
                txtName.Text = Request.Cookies["u_Name"].Value;
                txtPass.Text = Request.Cookies["u_Pass"].Value;
            }       
        }
        protected void SaveClick(object sender, EventArgs e)
        {
            string Name = txtName.Text.Trim();
            string Pass = txtPass.Text.Trim();
               
            if (Name == "admin" && Pass == "123456") {
                if (SavePass.Checked)
                {
                    Response.Cookies["u_Name"].Value = Name;
                    Response.Cookies["u_Pass"].Value = Pass;
                }
                else
                {
                    Response.Cookies["u_Name"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["u_Pass"].Expires = DateTime.Now.AddDays(-1);
                }
                Response.Redirect(url);
            }
        }
    }
}