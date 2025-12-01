using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ShopDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string shopId = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(shopId))
            {
                LoadShopInfo(shopId);
                LoadProducts(shopId);
            }
            else
            {
                Response.Redirect("/Shop.aspx");
            }
        }
    }

    private void LoadShopInfo(string shopId)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = "SELECT ShopName, Address, Phone FROM Shops WHERE ShopId=@ShopId";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@ShopId", shopId);
                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        lblShopName.Text = reader["ShopName"].ToString();
                        lblAddress.Text = reader["Address"].ToString();
                        lblPhone.Text = reader["Phone"].ToString();
                    }
                }
            }
        }
    }

    private void LoadProducts(string shopId)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = "SELECT ProductId, ProductName, Price, Stock, Brand, ImageUrl FROM Products WHERE ShopId=@ShopId ORDER BY ProductName";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            da.SelectCommand.Parameters.AddWithValue("@ShopId", shopId);
            DataTable dt = new DataTable();
            da.Fill(dt);
            
            // Bind DataTable directly instead of using anonymous types
            rptProducts.DataSource = dt;
            rptProducts.DataBind();
        }
    }
}
