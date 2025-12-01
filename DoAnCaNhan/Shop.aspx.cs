using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadShops();
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
            rptShops.DataSource = dt;
            rptShops.DataBind();
        }
    }
}