using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadShops();
            LoadProducts();
            LoadDropdowns();
        }
    }

    private void LoadShops()
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = "SELECT ShopId, ShopName, Address, Phone FROM Shops ORDER BY ShopName";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvShops.DataSource = dt;
            gvShops.DataBind();
        }
    }

    private void LoadProducts()
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = @"SELECT p.ProductId, p.ProductName, p.Brand, p.Price, p.Stock, s.ShopName, p.CategoryId, p.ShopId
                          FROM Products p 
                          INNER JOIN Shops s ON p.ShopId = s.ShopId 
                          ORDER BY p.ProductName";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvProducts.DataSource = dt;
            gvProducts.DataBind();
        }
    }

    private void LoadDropdowns()
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();

            string sqlShops = "SELECT ShopId, ShopName FROM Shops ORDER BY ShopName";
            SqlDataAdapter daShops = new SqlDataAdapter(sqlShops, conn);
            DataTable dtShops = new DataTable();
            daShops.Fill(dtShops);
            ddlShop.DataSource = dtShops;
            ddlShop.DataTextField = "ShopName";
            ddlShop.DataValueField = "ShopId";
            ddlShop.DataBind();

            string sqlCategories = "SELECT CategoryId, CategoryName FROM Categories ORDER BY CategoryName";
            SqlDataAdapter daCategories = new SqlDataAdapter(sqlCategories, conn);
            DataTable dtCategories = new DataTable();
            daCategories.Fill(dtCategories);
            ddlCategory.DataSource = dtCategories;
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataValueField = "CategoryId";
            ddlCategory.DataBind();
        }
    }

    protected void btnSaveShop_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string sql;
            
            if (string.IsNullOrEmpty(hfShopId.Value))
            {
                sql = "INSERT INTO Shops (ShopName, Address, Phone) VALUES (@ShopName, @Address, @Phone)";
            }
            else
            {
                sql = "UPDATE Shops SET ShopName=@ShopName, Address=@Address, Phone=@Phone WHERE ShopId=@ShopId";
            }

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@ShopName", txtShopName.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", txtShopAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone", txtShopPhone.Text.Trim());
                
                if (!string.IsNullOrEmpty(hfShopId.Value))
                {
                    cmd.Parameters.AddWithValue("@ShopId", hfShopId.Value);
                }

                cmd.ExecuteNonQuery();
            }
        }

        LoadShops();
        LoadDropdowns();
        ClearShopForm();
    }

    protected void btnSaveProduct_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string sql;
            
            if (string.IsNullOrEmpty(hfProductId.Value))
            {
                sql = @"INSERT INTO Products (ProductName, CategoryId, ShopId, Brand, Price, Stock, ImageUrl, Description) 
                       VALUES (@ProductName, @CategoryId, @ShopId, @Brand, @Price, @Stock, @ImageUrl, @Description)";
            }
            else
            {
                sql = @"UPDATE Products SET ProductName=@ProductName, CategoryId=@CategoryId, ShopId=@ShopId, 
                       Brand=@Brand, Price=@Price, Stock=@Stock, ImageUrl=@ImageUrl, Description=@Description 
                       WHERE ProductId=@ProductId";
            }

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@ProductName", txtProductName.Text.Trim());
                cmd.Parameters.AddWithValue("@CategoryId", ddlCategory.SelectedValue);
                cmd.Parameters.AddWithValue("@ShopId", ddlShop.SelectedValue);
                cmd.Parameters.AddWithValue("@Brand", txtBrand.Text.Trim());
                cmd.Parameters.AddWithValue("@Price", txtPrice.Text.Trim());
                cmd.Parameters.AddWithValue("@Stock", txtStock.Text.Trim());
                cmd.Parameters.AddWithValue("@ImageUrl", txtImageUrl.Text.Trim());
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text.Trim());
                
                if (!string.IsNullOrEmpty(hfProductId.Value))
                {
                    cmd.Parameters.AddWithValue("@ProductId", hfProductId.Value);
                }

                cmd.ExecuteNonQuery();
            }
        }

        LoadProducts();
        ClearProductForm();
    }

    protected void gvShops_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string shopId = e.CommandArgument.ToString();

        if (e.CommandName == "EditShop")
        {
            LoadShopForEdit(shopId);
        }
        else if (e.CommandName == "DeleteShop")
        {
            DeleteShop(shopId);
        }
    }

    protected void gvProducts_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string productId = e.CommandArgument.ToString();

        if (e.CommandName == "EditProduct")
        {
            LoadProductForEdit(productId);
        }
        else if (e.CommandName == "DeleteProduct")
        {
            DeleteProduct(productId);
        }
    }

    private void LoadShopForEdit(string shopId)
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
                        hfShopId.Value = shopId;
                        txtShopName.Text = reader["ShopName"].ToString();
                        txtShopAddress.Text = reader["Address"].ToString();
                        txtShopPhone.Text = reader["Phone"].ToString();
                        lblShopFormTitle.Text = "Sửa thông tin cửa hàng";
                    }
                }
            }
        }
    }

    private void LoadProductForEdit(string productId)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = "SELECT ProductName, CategoryId, ShopId, Brand, Price, Stock, ImageUrl, Description FROM Products WHERE ProductId=@ProductId";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@ProductId", productId);
                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        hfProductId.Value = productId;
                        txtProductName.Text = reader["ProductName"].ToString();
                        ddlCategory.SelectedValue = reader["CategoryId"].ToString();
                        ddlShop.SelectedValue = reader["ShopId"].ToString();
                        txtBrand.Text = reader["Brand"].ToString();
                        txtPrice.Text = reader["Price"].ToString();
                        txtStock.Text = reader["Stock"].ToString();
                        txtImageUrl.Text = reader["ImageUrl"].ToString();
                        txtDescription.Text = reader["Description"].ToString();
                        lblProductFormTitle.Text = "Sửa thông tin sản phẩm";
                    }
                }
            }
        }
    }

    private void DeleteShop(string shopId)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = "DELETE FROM Shops WHERE ShopId=@ShopId";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@ShopId", shopId);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
        LoadShops();
        LoadDropdowns();
    }

    private void DeleteProduct(string productId)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = "DELETE FROM Products WHERE ProductId=@ProductId";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@ProductId", productId);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
        LoadProducts();
    }

    private void ClearShopForm()
    {
        hfShopId.Value = "";
        txtShopName.Text = "";
        txtShopAddress.Text = "";
        txtShopPhone.Text = "";
    }

    private void ClearProductForm()
    {
        hfProductId.Value = "";
        txtProductName.Text = "";
        txtBrand.Text = "";
        txtPrice.Text = "";
        txtStock.Text = "";
        txtImageUrl.Text = "";
        txtDescription.Text = "";
    }
}

