using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadHeroProducts();
            LoadBestSellerROG();
        }
    }

    private void LoadHeroProducts()
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = @"SELECT TOP 3 ProductId, ProductName, Price, ImageUrl FROM Products ORDER BY ProductId";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            rptHero.DataSource = dt;
            rptHero.DataBind();
        }
    }

    private void LoadBestSellerROG()
    {
        string connStr = ConfigurationManager.ConnectionStrings["ShopPCConnection"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string sql = @"SELECT TOP 12 ProductId, ProductName, Price, ImageUrl FROM Products WHERE Brand='ASUS ROG' ORDER BY ProductId";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            rptBestSeller.DataSource = dt;
            rptBestSeller.DataBind();
        }
    }
}
