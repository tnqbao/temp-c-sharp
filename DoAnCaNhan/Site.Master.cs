using System;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            lnkLogin.Text = "Đăng xuất";
            lnkLogin.NavigateUrl = "~/Pages/Logout.aspx";
        }
        else
        {
            lnkLogin.Text = "Đăng nhập";
            lnkLogin.NavigateUrl = "~/Pages/Login.aspx";
        }
    }
}
