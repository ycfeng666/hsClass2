using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace classWork1
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["u_Name"] != null && Request.Cookies["u_Pass"] != null) {
                LogName.Text = "用户"+Request.Cookies["u_Name"].Value+"登陆成功";
            }
        }
    }
}