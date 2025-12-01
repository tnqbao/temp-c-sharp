<%@ Page Title="Chi tiết cửa hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ShopDetail.aspx.cs" Inherits="ShopDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="shop-detail-container">
        <a href="/Shop.aspx" class="back-link">← Quay lại danh sách</a>
        
        <div class="shop-info">
            <div class="shop-header">
                <div class="shop-icon-large">🏬</div>
                <div>
                    <h1><asp:Label ID="lblShopName" runat="server"></asp:Label></h1>
                    <p class="shop-meta">
                        📍 <asp:Label ID="lblAddress" runat="server"></asp:Label>
                    </p>
                    <p class="shop-meta">
                        📞 <asp:Label ID="lblPhone" runat="server"></asp:Label>
                    </p>
                </div>
            </div>
        </div>

        <div class="products-section">
            <h2>Sản phẩm của cửa hàng</h2>
            <div class="products-grid">
                <asp:Repeater ID="rptProducts" runat="server">
                    <ItemTemplate>
                        <div class="product-card">
                            <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("ProductName") %>' />
                            <h3><%# Eval("ProductName") %></h3>
                            <p class="brand"><%# Eval("Brand") %></p>
                            <p class="price"><%# Eval("Price", "{0:N0}") %> VNĐ</p>
                            <p class="stock">Kho: <%# Eval("Stock") %></p>
                            <a href='Product.aspx?id=<%# Eval("ProductId") %>' class="btn-view">Xem chi tiết</a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

    <style>
        .shop-detail-container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .back-link {
            display: inline-block;
            color: #ff6b00;
            text-decoration: none;
            margin-bottom: 20px;
            font-size: 0.95rem;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        .shop-info {
            background: #1f1f1f;
            border: 1px solid #333;
            border-radius: 8px;
            padding: 30px;
            margin-bottom: 40px;
        }

        .shop-header {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .shop-icon-large {
            font-size: 4rem;
        }

        .shop-header h1 {
            color: #ff6b00;
            font-size: 2rem;
            margin-bottom: 10px;
        }

        .shop-meta {
            color: #aaa;
            margin: 5px 0;
        }

        .products-section h2 {
            color: #ff6b00;
            margin-bottom: 20px;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
        }

        .product-card {
            background: #222;
            border-radius: 8px;
            padding: 15px;
            text-align: center;
            transition: transform 0.3s;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(255, 107, 0, 0.3);
        }

        .product-card img {
            width: 100%;
            height: 180px;
            object-fit: contain;
            background: #111;
            border-radius: 6px;
            margin-bottom: 10px;
        }

        .product-card h3 {
            color: #fff;
            font-size: 1rem;
            margin: 10px 0;
            min-height: 40px;
        }

        .brand {
            color: #888;
            font-size: 0.85rem;
            margin: 5px 0;
        }

        .price {
            color: #ff6b00;
            font-size: 1.2rem;
            font-weight: bold;
            margin: 10px 0;
        }

        .stock {
            color: #28a745;
            font-size: 0.9rem;
            margin: 5px 0;
        }

        .btn-view {
            display: inline-block;
            padding: 8px 16px;
            background: #ff6b00;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 10px;
            transition: background 0.2s;
        }

        .btn-view:hover {
            background: #ff8c3f;
        }
    </style>
</asp:Content>
