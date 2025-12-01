using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;

public partial class Product : System.Web.UI.Page
{
    private string currentProductId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string productId = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(productId))
            {
                currentProductId = productId;
                ViewState["ProductId"] = productId;
                LoadProduct(productId);
            }
            else
            {
                Response.Redirect("/Shop.aspx");
            }
        }
        else
        {
            currentProductId = ViewState["ProductId"]?.ToString();
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
                        lnkViewShop.NavigateUrl = "ShopDetail.aspx?id=" + reader["ShopId"];
                        
                        ViewState["ProductData"] = new
                        {
                            Price = reader["Price"],
                            Stock = reader["Stock"],
                            Name = reader["ProductName"].ToString(),
                            Brand = reader["Brand"].ToString(),
                            ImageUrl = reader["ImageUrl"].ToString()
                        };
                    }
                    else
                    {
                        Response.Redirect("/Shop.aspx");
                    }
                }
            }
        }
    }

    protected void btnIncrease_Click(object sender, EventArgs e)
    {
        int qty = int.Parse(txtQuantity.Text);
        txtQuantity.Text = (qty + 1).ToString();
    }

    protected void btnDecrease_Click(object sender, EventArgs e)
    {
        int qty = int.Parse(txtQuantity.Text);
        if (qty > 1)
        {
            txtQuantity.Text = (qty - 1).ToString();
        }
    }

    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        string productId = ViewState["ProductId"]?.ToString();
        int quantity = int.Parse(txtQuantity.Text);

        if (Session["Cart"] == null)
        {
            Session["Cart"] = new List<CartItem>();
        }

        List<CartItem> cart = (List<CartItem>)Session["Cart"];
        CartItem existingItem = cart.FirstOrDefault(x => x.ProductId.ToString() == productId);

        if (existingItem != null)
        {
            existingItem.Quantity += quantity;
        }
        else
        {
            cart.Add(new CartItem
            {
                ProductId = int.Parse(productId),
                ProductName = lblProductName.Text,
                Brand = lblBrand.Text,
                ImageUrl = imgProduct.ImageUrl,
                Price = decimal.Parse(lblPrice.Text.Replace(",", "")),
                Quantity = quantity
            });
        }

        Session["Cart"] = cart;
        lblMessage.Text = "Đã thêm vào giỏ hàng!";
        lblMessage.ForeColor = System.Drawing.Color.Green;
    }
}
