using System;
using System.Web.UI.WebControls;

namespace classWork2
{
    public partial class index : System.Web.UI.Page
    {
        double result;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /* 数字 */
        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            if (TextBox1.Text == string.Empty || TextBox1.Text == "错误") {
                TextBox1.Text = btn.Text;
            }
            else TextBox1.Text += btn.Text;

        }

        /* = */
        protected void Button4_Click(object sender, EventArgs e)
        {
            string s_txt = TextBox1.Text;
            int space = s_txt.IndexOf(' ');
            try
            {
                if (space < 0) TextBox1.Text = TextBox1.Text;
                else
                {
                    string c1 = s_txt.Substring(0, space);
                    char operation = Convert.ToChar(s_txt.Substring((space + 1), 1));
                    string c2 = s_txt.Substring(space + 3);
                    double arg1 = Convert.ToDouble(c1);
                    double arg2 = Convert.ToDouble(c2);

                    TextBox1.Text = result.ToString();
                    switch (operation)
                    {
                        case '+':
                            result = arg1 + arg2;
                            break;
                        case '-':
                            result = arg1 - arg2;
                            break;
                        case '×':
                            result = arg1 * arg2;
                            break;
                        case '/':
                            result = arg1 / arg2;
                            break;
                    }
                    if (double.IsNaN(result) || double.IsInfinity(result)) TextBox1.Text = "错误";
                    else TextBox1.Text = result.ToString();
                }
            }
            catch
            {
                TextBox1.Text = "错误";
            }            
        }
        /* 小数点 */
        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string sc_txt = TextBox1.Text;
            int space = sc_txt.IndexOf(' ');
            if (TextBox1.Text == "") TextBox1.Text = "0.";
            else
            {
                string str_last = sc_txt.Substring(sc_txt.Length - 1, 1);
                if (str_last == " ") TextBox1.Text += "0.";
                else
                {                
                    if (space < 0)
                    {
                        if (sc_txt.Contains(".")) TextBox1.Text = TextBox1.Text;
                        else TextBox1.Text += btn.Text;
                    }
                    else
                    {
                        string s2 = sc_txt.Substring(space + 3);
                        if (s2.Contains(".")) TextBox1.Text = TextBox1.Text;
                        else TextBox1.Text += btn.Text;
                    }

                }
            }

        }
        /* 加减乘除 */
        protected void Button3_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            if (TextBox1.Text == string.Empty || TextBox1.Text == "错误") TextBox1.Text = "";
            else TextBox1.Text = TextBox1.Text + " " + btn.Text + " ";

        }
        /* 退格 */
        protected void Button6_Click(object sender, EventArgs e)
        {
            string s = TextBox1.Text;
            if (s != "错误" && s.Length > 0) {
                TextBox1.Text = s.Remove(s.Length - 1, 1);
                s = TextBox1.Text;
                if (s.Length > 0 && s.Substring(s.Length-1,1) == ".")
                    TextBox1.Text = s.Remove(s.Length - 1, 1);
            }
            else TextBox1.Text = "";           

        }
        // 清空
        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
        }
    }
}