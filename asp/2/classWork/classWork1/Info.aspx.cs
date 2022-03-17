using System;
using System.Collections.Generic;

namespace classWork1
{
    public partial class Info : System.Web.UI.Page
    {
        string Name = string.Empty;
        string Pass = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            Name = Request.QueryString["name"];
            Pass = Request.QueryString["pass"];
            DateTime date = DateTime.Now;
            if (!IsPostBack)
            {
                for (int i = date.Year - 10, j = date.Year; i <= j; i++) YearList.Items.Add(i.ToString());
                for (int m = 1, n = 5; m <= n; m++) ImgList.Items.Add(m.ToString()+".jpg");
            }
            Photo.ImageUrl = "img/" + ImgList.SelectedValue;
        }
        protected void SaveClick(object sender, EventArgs e) {
            string sex = string.Empty;
            string city = string.Empty;
            List<string> chatArr = new List<string>();
            for (int i = 0, j = SexRadio.Items.Count; i < j; i++) if (SexRadio.Items[i].Selected) sex = SexRadio.Items[i].Value;
            for (int i = 0, j = CityRadio.Items.Count; i < j; i++) if (CityRadio.Items[i].Selected) city = CityRadio.Items[i].Value;
            for (int i = 0, j = ChatCheck.Items.Count; i < j; i++) if (ChatCheck.Items[i].Selected) chatArr.Add(ChatCheck.Items[i].Value);
            string chat = chatArr.Count > 0 ? string.Join(",", chatArr.ToArray()) : "您未进行选择";
            saveMessage.Text = string.Format("性别:{0}\r\n生源地:{1}\r\n常用联系方式:{2}\r\n入学年份:{3}", sex,city, chat, YearList.SelectedValue);
        }
        protected void ImgChange(object sender, EventArgs e)
        {
            Photo.ImageUrl = "img/" + ImgList.SelectedValue;
        }
    }
}