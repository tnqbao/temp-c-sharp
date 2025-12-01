<%@ Page Title="Giỏ hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cart-container">
        <h1>Giỏ hàng của bạn</h1>
        
        <asp:Panel ID="pnlEmptyCart" runat="server" CssClass="empty-cart" Visible="false">
            <p>Giỏ hàng trống</p>
            <asp:HyperLink runat="server" NavigateUrl="/Shop.aspx" CssClass="btn-shop-now">Mua sắm ngay</asp:HyperLink>
        </asp:Panel>

        <asp:Panel ID="pnlCartItems" runat="server">
            <asp:Repeater ID="rptCartItems" runat="server" OnItemCommand="rptCartItems_ItemCommand">
                <ItemTemplate>
                    <div class="cart-item">
                        <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("ProductName") %>' class="item-image" />
                        <div class="item-info">
                            <h3><%# Eval("ProductName") %></h3>
                            <p class="item-brand"><%# Eval("Brand") %></p>
                            <p class="item-price"><%# Eval("Price", "{0:N0}") %> VNĐ</p>
                        </div>
                        <div class="item-quantity">
                            <asp:Button runat="server" CommandName="Decrease" CommandArgument='<%# Eval("ProductId") %>' 
                                Text="-" CssClass="btn-qty" />
                            <span class="qty"><%# Eval("Quantity") %></span>
                            <asp:Button runat="server" CommandName="Increase" CommandArgument='<%# Eval("ProductId") %>' 
                                Text="+" CssClass="btn-qty" />
                        </div>
                        <div class="item-total">
                            <p class="subtotal"><%# Eval("Subtotal", "{0:N0}") %> VNĐ</p>
                            <asp:Button runat="server" CommandName="Remove" CommandArgument='<%# Eval("ProductId") %>' 
                                Text="Xóa" CssClass="btn-remove" OnClientClick="return confirm('Xóa sản phẩm này?');" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <div class="cart-summary">
                <div class="summary-row">
                    <span>Tổng cộng:</span>
                    <span class="total-amount"><asp:Label ID="lblTotal" runat="server"></asp:Label> VNĐ</span>
                </div>
                <asp:Button ID="btnCheckout" runat="server" Text="Thanh toán" CssClass="btn-checkout" OnClick="btnCheckout_Click" />
            </div>
        </asp:Panel>
    </div>

    <style>
        .cart-container {
            max-width: 1000px;
            margin: 0 auto;
        }

        .cart-container h1 {
            color: #ff6b00;
            margin-bottom: 30px;
        }

        .empty-cart {
            text-align: center;
            padding: 60px 20px;
        }

        .empty-cart p {
            color: #999;
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        .btn-shop-now {
            display: inline-block;
            padding: 12px 30px;
            background: #ff6b00;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
        }

        .btn-shop-now:hover {
            background: #ff8c3f;
        }

        .cart-item {
            display: grid;
            grid-template-columns: 100px 1fr auto auto;
            gap: 20px;
            align-items: center;
            background: #1f1f1f;
            border: 1px solid #333;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 15px;
        }

        .item-image {
            width: 100px;
            height: 100px;
            object-fit: contain;
            background: #111;
            border-radius: 6px;
        }

        .item-info h3 {
            color: #fff;
            font-size: 1.1rem;
            margin-bottom: 8px;
        }

        .item-brand {
            color: #888;
            font-size: 0.9rem;
            margin-bottom: 8px;
        }

        .item-price {
            color: #ff6b00;
            font-weight: bold;
        }

        .item-quantity {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .btn-qty {
            width: 32px;
            height: 32px;
            background: #2a2a2a;
            border: 1px solid #444;
            border-radius: 4px;
            color: #fff;
            cursor: pointer;
            font-size: 1.2rem;
        }

        .btn-qty:hover {
            background: #ff6b00;
            border-color: #ff6b00;
        }

        .qty {
            color: #fff;
            font-size: 1.1rem;
            min-width: 30px;
            text-align: center;
        }

        .item-total {
            text-align: right;
        }

        .subtotal {
            color: #fff;
            font-size: 1.2rem;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .btn-remove {
            padding: 6px 12px;
            background: #dc3545;
            border: none;
            border-radius: 4px;
            color: #fff;
            cursor: pointer;
        }

        .btn-remove:hover {
            background: #c82333;
        }

        .cart-summary {
            background: #1f1f1f;
            border: 1px solid #333;
            border-radius: 8px;
            padding: 25px;
            margin-top: 30px;
        }

        .summary-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            font-size: 1.3rem;
        }

        .summary-row span:first-child {
            color: #ccc;
        }

        .total-amount {
            color: #ff6b00;
            font-weight: bold;
            font-size: 1.5rem;
        }

        .btn-checkout {
            width: 100%;
            padding: 15px;
            background: #28a745;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
        }

        .btn-checkout:hover {
            background: #218838;
        }

        @media (max-width: 768px) {
            .cart-item {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .item-total {
                text-align: center;
            }
        }
    </style>
</asp:Content>

