using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        title.Text = "welcome";
        //time.Text = DateTime.Now.ToString("yyyy年mm月dd日hh时mm分ss秒");
        time.Text = DateTime.Now.Year + "年" + DateTime.Now.Month + "月" + DateTime.Now.Day + "日";
    }
}
