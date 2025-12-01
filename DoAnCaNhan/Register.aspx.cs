using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();
        string email = txtEmail.Text.Trim();
        string fullName = txtFullName.Text.Trim();

        if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(email))
        {
            lblMessage.Text = "Vui lòng điền đầy đủ thông tin!";
            return;
        }

        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string sql = "INSERT INTO Users(Username, Password, Email, FullName) VALUES(@Username,@Password,@Email,@FullName)";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password); // demo, không hash
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@FullName", fullName);

                try
                {
                    cmd.ExecuteNonQuery();
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Đăng ký thành công! <a href='Login.aspx'>Đăng nhập ngay</a>";
                    pnlRegister.Visible = false;
                }
                catch (SqlException ex)
                {
                    if (ex.Number == 2627) // duplicate key
                        lblMessage.Text = "Username hoặc Email đã tồn tại!";
                    else
                        lblMessage.Text = "Lỗi: " + ex.Message;
                }
            }
        }
    }
}
