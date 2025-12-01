using System;
using System.Data;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Linq;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadCart();
        }
    }

    private void LoadCart()
    {
        List<CartItem> cart = GetCart();
        
        if (cart.Count == 0)
        {
            pnlEmptyCart.Visible = true;
            pnlCartItems.Visible = false;
        }
        else
        {
            pnlEmptyCart.Visible = false;
            pnlCartItems.Visible = true;
            
            rptCartItems.DataSource = cart;
            rptCartItems.DataBind();
            
            decimal total = cart.Sum(item => item.Subtotal);
            lblTotal.Text = string.Format("{0:N0}", total);
        }
    }

    private List<CartItem> GetCart()
    {
        if (Session["Cart"] == null)
        {
            Session["Cart"] = new List<CartItem>();
        }
        return (List<CartItem>)Session["Cart"];
    }

    protected void rptCartItems_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int productId = int.Parse(e.CommandArgument.ToString());
        List<CartItem> cart = GetCart();
        CartItem item = cart.FirstOrDefault(x => x.ProductId == productId);

        if (item != null)
        {
            if (e.CommandName == "Increase")
            {
                item.Quantity++;
            }
            else if (e.CommandName == "Decrease")
            {
                if (item.Quantity > 1)
                {
                    item.Quantity--;
                }
            }
            else if (e.CommandName == "Remove")
            {
                cart.Remove(item);
            }

            Session["Cart"] = cart;
            LoadCart();
        }
    }

    protected void btnCheckout_Click(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Response.Redirect("/Login.aspx");
            return;
        }

        Response.Redirect("/Checkout.aspx");
    }
}

[Serializable]
public class CartItem
{
    public int ProductId { get; set; }
    public string ProductName { get; set; }
    public string Brand { get; set; }
    public string ImageUrl { get; set; }
    public decimal Price { get; set; }
    public int Quantity { get; set; }
    public decimal Subtotal
    {
        get { return Price * Quantity; }
    }
}

