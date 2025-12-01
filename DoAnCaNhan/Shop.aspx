<%@ Page Title="Shops" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="shop-container">
        <h1>Shop List</h1>
        <p class="subtitle">Select a shop to view products</p>
        
        <div class="shops-grid">
            <asp:Repeater ID="rptShops" runat="server">
                <ItemTemplate>
                    <a href='ShopDetail.aspx?id=<%# Eval("ShopId") %>' class="shop-card">
                        <div class="shop-header">
                            <h3><%# Eval("ShopName") %></h3>
                        </div>
                        <div class="shop-details">
                            <p class="shop-address">📍 <%# Eval("Address") %></p>
                            <p class="shop-phone">📞 <%# Eval("Phone") %></p>
                        </div>
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
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }

        .shop-card {
            background: #1f1f1f;
            border: 1px solid #333;
            border-radius: 8px;
            padding: 0;
            text-decoration: none;
            transition: all 0.3s;
            overflow: hidden;
        }

        .shop-card:hover {
            border-color: #ff6b00;
            transform: translateY(-5px);
            box-shadow: 0 5px 20px rgba(255, 107, 0, 0.2);
        }

        .shop-header {
            background: linear-gradient(135deg, #ff6b00, #ff8c3f);
            padding: 20px;
        }

        .shop-header h3 {
            color: #fff;
            font-size: 1.4rem;
            margin: 0;
        }

        .shop-details {
            padding: 20px;
        }

        .shop-address, .shop-phone {
            color: #aaa;
            font-size: 0.9rem;
            margin: 8px 0;
        }
    </style>
</asp:Content>
