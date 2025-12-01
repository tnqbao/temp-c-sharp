using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();

        if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
        {
            lblMessage.Visible = true;
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Vui lòng nhập Username và Password!";
            return;
        }

        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string sql = "SELECT UserId, FullName FROM Users WHERE Username=@Username AND Password=@Password";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password); // demo, không hash

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        Session["UserId"] = reader["UserId"];
                        Session["Username"] = username;
                        Session["FullName"] = reader["FullName"];
                        Response.Redirect("Default.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                    else
                    {
                        lblMessage.Visible = true;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Username hoặc Password không đúng!";
                    }
                }
            }
        }
    }
}
