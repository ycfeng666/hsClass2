using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace classWork2
{
    public partial class chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {      
            string messageStr = txtMessage.Text.Trim();
            if (messageStr != string.Empty) {
                ArrayList MessageList = new ArrayList();
                string SendUser = Session["User"].ToString();
                string SendTime = DateTime.Now.ToString();
                string Message = string.Format("{0}于{1}发送了：{2}",SendUser,SendTime,messageStr);
                if (Application["MessageList"] == null)
                {
                    MessageList.Add(Message);
                    Application["MessageList"] = MessageList;
                }
                else {
                    MessageList = (ArrayList)Application["MessageList"];
                    MessageList.Add(Message);
                    Application["MessageList"] = MessageList;
                }
                txtMessage.Text = "";
                txtMessage.Focus();
            }
            
        }
    }
}