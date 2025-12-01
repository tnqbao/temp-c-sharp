<%@ Page Title="Cửa hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="shop-container">
        <h1>🏪 Danh sách cửa hàng</h1>
        <p class="subtitle">Chọn cửa hàng để xem các sản phẩm</p>
        
        <div class="shops-grid">
            <asp:Repeater ID="rptShops" runat="server">
                <ItemTemplate>
                    <a href='ShopDetail.aspx?id=<%# Eval("ShopId") %>' class="shop-card">
                        <div class="shop-icon">🏬</div>
                        <h3><%# Eval("ShopName") %></h3>
                        <p class="shop-address">📍 <%# Eval("Address") %></p>
                        <p class="shop-phone">📞 <%# Eval("Phone") %></p>
                    </a>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <style>
        .shop-container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .shop-container h1 {
            color: #ff6b00;
            font-size: 2rem;
            margin-bottom: 10px;
        }

        .subtitle {
            color: #999;
            margin-bottom: 30px;
        }

        .shops-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 20px;
        }

        .shop-card {
            background: #1f1f1f;
            border: 1px solid #333;
            border-radius: 8px;
            padding: 30px;
            text-align: center;
            text-decoration: none;
            transition: all 0.3s;
        }

        .shop-card:hover {
            border-color: #ff6b00;
            transform: translateY(-5px);
            box-shadow: 0 5px 20px rgba(255, 107, 0, 0.2);
        }

        .shop-icon {
            font-size: 3rem;
            margin-bottom: 15px;
        }

        .shop-card h3 {
            color: #fff;
            font-size: 1.4rem;
            margin-bottom: 15px;
        }

        .shop-address, .shop-phone {
            color: #aaa;
            font-size: 0.9rem;
            margin: 8px 0;
        }
    </style>
</asp:Content>
