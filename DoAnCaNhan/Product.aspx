<%@ Page Title="Chi tiết sản phẩm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="product-detail-container">
        <a href="javascript:history.back()" class="back-link">← Quay lại</a>
        
        <div class="product-detail">
            <div class="product-image">
                <asp:Image ID="imgProduct" runat="server" />
            </div>
            <div class="product-info">
                <h1><asp:Label ID="lblProductName" runat="server"></asp:Label></h1>
                <p class="brand">Thương hiệu: <asp:Label ID="lblBrand" runat="server"></asp:Label></p>
                <p class="price"><asp:Label ID="lblPrice" runat="server"></asp:Label> VNĐ</p>
                <p class="stock">Còn lại: <asp:Label ID="lblStock" runat="server"></asp:Label> sản phẩm</p>
                
                <div class="quantity-selector">
                    <label>Số lượng:</label>
                    <div class="qty-controls">
                        <asp:Button ID="btnDecrease" runat="server" Text="-" CssClass="btn-qty" OnClick="btnDecrease_Click" />
                        <asp:TextBox ID="txtQuantity" runat="server" Text="1" CssClass="qty-input" TextMode="Number" min="1" />
                        <asp:Button ID="btnIncrease" runat="server" Text="+" CssClass="btn-qty" OnClick="btnIncrease_Click" />
                    </div>
                </div>

                <asp:Button ID="btnAddToCart" runat="server" Text="Thêm vào giỏ hàng" CssClass="btn-add-cart" OnClick="btnAddToCart_Click" />
                <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
                
                <div class="description">
                    <h3>Mô tả sản phẩm</h3>
                    <p><asp:Label ID="lblDescription" runat="server"></asp:Label></p>
                </div>

                <div class="shop-info-box">
                    <h3>Cửa hàng</h3>
                    <p><asp:Label ID="lblShopName" runat="server"></asp:Label></p>
                    <asp:HyperLink ID="lnkViewShop" runat="server" CssClass="btn-shop">Xem cửa hàng</asp:HyperLink>
                </div>
            </div>
        </div>
    </div>

    <style>
        .product-detail-container {
            max-width: 1000px;
            margin: 0 auto;
        }

        .back-link {
            display: inline-block;
            color: #ff6b00;
            text-decoration: none;
            margin-bottom: 20px;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        .product-detail {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            background: #1f1f1f;
            border: 1px solid #333;
            border-radius: 8px;
            padding: 30px;
        }

        .product-image img {
            width: 100%;
            border-radius: 8px;
            background: #111;
            padding: 20px;
        }

        .product-info h1 {
            color: #fff;
            font-size: 2rem;
            margin-bottom: 15px;
        }

        .brand {
            color: #aaa;
            margin-bottom: 15px;
        }

        .price {
            color: #ff6b00;
            font-size: 2rem;
            font-weight: bold;
            margin: 20px 0;
        }

        .stock {
            color: #28a745;
            margin-bottom: 20px;
        }

        .description {
            margin: 30px 0;
        }

        .description h3 {
            color: #fff;
            margin-bottom: 10px;
        }

        .description p {
            color: #ccc;
            line-height: 1.6;
        }

        .shop-info-box {
            background: #2a2a2a;
            padding: 20px;
            border-radius: 8px;
            margin-top: 20px;
        }

        .shop-info-box h3 {
            color: #fff;
            margin-bottom: 10px;
        }

        .shop-info-box p {
            color: #ccc;
            margin-bottom: 15px;
        }

        .btn-shop {
            display: inline-block;
            padding: 10px 20px;
            background: #ff6b00;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background 0.2s;
        }

        .btn-shop:hover {
            background: #ff8c3f;
        }

        .quantity-selector {
            margin: 25px 0;
        }

        .quantity-selector label {
            display: block;
            color: #ccc;
            margin-bottom: 10px;
            font-weight: 500;
        }

        .qty-controls {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .btn-qty {
            width: 40px;
            height: 40px;
            background: #2a2a2a;
            border: 1px solid #444;
            border-radius: 4px;
            color: #fff;
            font-size: 1.3rem;
            cursor: pointer;
            transition: all 0.2s;
        }

        .btn-qty:hover {
            background: #ff6b00;
            border-color: #ff6b00;
        }

        .qty-input {
            width: 80px;
            height: 40px;
            text-align: center;
            background: #2a2a2a;
            border: 1px solid #444;
            border-radius: 4px;
            color: #fff;
            font-size: 1.1rem;
        }

        .qty-input:focus {
            outline: none;
            border-color: #ff6b00;
        }

        .btn-add-cart {
            width: 100%;
            padding: 15px;
            background: #28a745;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.2s;
            margin-bottom: 15px;
        }

        .btn-add-cart:hover {
            background: #218838;
        }

        .message {
            display: block;
            padding: 10px;
            border-radius: 4px;
            text-align: center;
            margin-bottom: 20px;
        }

        .message:empty {
            display: none;
        }

        @media (max-width: 768px) {
            .product-detail {
                grid-template-columns: 1fr;
            }
        }
    </style>
</asp:Content>
