using System;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            lnkLogin.Text = "Đăng xuất (" + Session["Username"] + ")";
            lnkLogin.NavigateUrl = "/Logout.aspx";
            lnkRegister.Visible = false;
        }
        else
        {
            lnkLogin.Text = "Đăng nhập";
            lnkLogin.NavigateUrl = "/Login.aspx";
            lnkRegister.Visible = true;
        }
    }
}
