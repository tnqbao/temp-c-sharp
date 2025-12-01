using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();
        string email = txtEmail.Text.Trim();

        if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(email))
        {
            lblMessage.Visible = true;
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Vui lòng điền đầy đủ thông tin!";
            return;
        }

        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string sql = "INSERT INTO Users(Username, Password, Email) VALUES(@Username,@Password,@Email)";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password); // demo, không hash
                cmd.Parameters.AddWithValue("@Email", email);

                try
                {
                    cmd.ExecuteNonQuery();
                    lblMessage.Visible = true;
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Đăng ký thành công! Đang chuyển hướng đến trang đăng nhập...";
                    
                    // Clear form
                    txtUsername.Text = "";
                    txtPassword.Text = "";
                    txtEmail.Text = "";
                    
                    // Redirect to Login page after 2 seconds
                    Response.AddHeader("REFRESH", "2;URL=Login.aspx");
                }
                catch (SqlException ex)
                {
                    lblMessage.Visible = true;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    if (ex.Number == 2627) // duplicate key
                        lblMessage.Text = "Username hoặc Email đã tồn tại!";
                    else
                        lblMessage.Text = "Lỗi: " + ex.Message;
                }
            }
        }
    }
}
