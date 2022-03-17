using System;

namespace classWork1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginNow"] == null) Session["LoginNow"] = 0;
            NowUserNum.Text = Session["LoginNow"].ToString();
        }
        protected void SaveClick(object sender, EventArgs e) {
            string Name = txtName.Text.Trim();
            string Pass = txtPass.Text.Trim();
            if (Name != string.Empty & Pass != string.Empty) Session["LoginNow"] = (int)Session["LoginNow"] + 1;
            NowUser.Text = Name;
            NowUserNum.Text = Session["LoginNow"].ToString();
        }
    }
}