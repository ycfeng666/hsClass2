using System;

namespace classWork1
{
    public partial class Save : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            messageRow.Visible = false;
            ToInfoRow.Visible = false;
        }
        // 点击注册
        protected void SaveClick(object sender, EventArgs e)
        {
            string Name = txtName.Text.Trim();
            string Pass = txtPass.Text.Trim();
            if (Name != string.Empty & Pass != string.Empty)
            {
                string PassAgain = txtPassAgain.Text.Trim();
                if (PassAgain != string.Empty & PassAgain == Pass) {
                    messageRow.Visible = true;
                    ToInfoRow.Visible = true;
                    saveMessage.Text = string.Format("注册成功,用户名:{0};密码:{1}",Name,Pass);
                    saveMessage.ForeColor = System.Drawing.Color.Green;
                }
            }
            else {
                messageRow.Visible = true;
                saveMessage.Text = "用户名与密码不允许为空";
                saveMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
        // 完善个人信息
        protected void ToFullInfoClick(object sender, EventArgs e)
        {
            string Url = string.Format("Info.aspx?name={0}&pass={1}", txtName.Text.Trim(), txtPass.Text.Trim());
            Response.Redirect(Url);
        }
    }
}