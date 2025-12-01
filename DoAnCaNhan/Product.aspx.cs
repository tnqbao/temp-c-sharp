using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string productId = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(productId))
            {
                LoadProduct(productId);
            }
            else
            {
                Response.Redirect("/Shop.aspx");
            }
        }
    }

    private void LoadProduct(string productId)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = @"SELECT p.ProductName, p.Description, p.Price, p.Stock, p.Brand, p.ImageUrl, 
                          p.ShopId, s.ShopName 
                          FROM Products p 
                          INNER JOIN Shops s ON p.ShopId = s.ShopId 
                          WHERE p.ProductId=@ProductId";
            
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@ProductId", productId);
                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        lblProductName.Text = reader["ProductName"].ToString();
                        lblBrand.Text = reader["Brand"].ToString();
                        lblPrice.Text = string.Format("{0:N0}", reader["Price"]);
                        lblStock.Text = reader["Stock"].ToString();
                        lblDescription.Text = reader["Description"].ToString();
                        lblShopName.Text = reader["ShopName"].ToString();
                        imgProduct.ImageUrl = reader["ImageUrl"].ToString();
                        lnkViewShop.NavigateUrl = "ShopDetail.aspx?id=" + reader["ShopId"].ToString();
                    }
                    else
                    {
                        Response.Redirect("/Shop.aspx");
                    }
                }
            }
        }
    }
}

