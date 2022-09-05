using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        time.Text = DateTime.Now.Year + "年" + DateTime.Now.Month + "月" + DateTime.Now.Day + "日";
    }
}