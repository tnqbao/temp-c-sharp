<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- HERO SECTION -->
    <div class="hero-section">
        <div class="hero-content">
            <h1 class="hero-title">QuocBaoPC</h1>
            <p class="hero-subtitle">Providing authentic computer components at the best market prices</p>
            <div class="hero-buttons">
                <asp:HyperLink runat="server" NavigateUrl="~/Shop.aspx" CssClass="btn-primary">
                    🛒 Shop Now
                </asp:HyperLink>
                <asp:HyperLink runat="server" NavigateUrl="~/Info.aspx" CssClass="btn-secondary">
                    Learn More
                </asp:HyperLink>
            </div>
        </div>
        <div class="hero-animation">
            <div class="floating-card card-1"></div>
            <div class="floating-card card-2"></div>
            <div class="floating-card card-3"></div>
            <div class="floating-card card-4"></div>
        </div>
    </div>

    <!-- FEATURES SECTION -->
    <div class="features-section">
        <h2 class="section-title">Why Choose Us?</h2>
        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"></div>
                <h3>100% Authentic</h3>
                <p>Genuine products with full warranty seals</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"></div>
                <h3>Fast Delivery</h3>
                <p>Nationwide shipping within 24-48h</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"></div>
                <h3>Best Prices</h3>
                <p>Competitive pricing with attractive deals</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"></div>
                <h3>Long-term Warranty</h3>
                <p>Flexible warranty and return support</p>
            </div>
        </div>
    </div>

    <!-- CATEGORIES SECTION -->
    <div class="categories-section">
        <h2 class="section-title">Product Categories</h2>
        <div class="categories-grid">
            <asp:HyperLink runat="server" NavigateUrl="~/Shop.aspx?cat=cpu" CssClass="category-card">
                <div class="category-icon"></div>
                <h3>CPU</h3>
                <p>Intel, AMD</p>
            </asp:HyperLink>
            
            <asp:HyperLink runat="server" NavigateUrl="~/Shop.aspx?cat=vga" CssClass="category-card">
                <div class="category-icon"></div>
                <h3>VGA</h3>
                <p>NVIDIA, AMD</p>
            </asp:HyperLink>
            
            <asp:HyperLink runat="server" NavigateUrl="~/Shop.aspx?cat=ram" CssClass="category-card">
                <div class="category-icon"></div>
                <h3>RAM</h3>
                <p>DDR4, DDR5</p>
            </asp:HyperLink>
            
            <asp:HyperLink runat="server" NavigateUrl="~/Shop.aspx?cat=ssd" CssClass="category-card">
                <div class="category-icon"></div>
                <h3>SSD</h3>
                <p>NVMe, SATA</p>
            </asp:HyperLink>
            
            <asp:HyperLink runat="server" NavigateUrl="~/Shop.aspx?cat=mainboard" CssClass="category-card">
                <div class="category-icon"></div>
                <h3>Mainboard</h3>
                <p>ASUS, MSI, Gigabyte</p>
            </asp:HyperLink>
            
            <asp:HyperLink runat="server" NavigateUrl="~/Shop.aspx?cat=case" CssClass="category-card">
                <div class="category-icon"></div>
                <h3>Case</h3>
                <p>Gaming, Workstation</p>
            </asp:HyperLink>
        </div>
    </div>

    <!-- STATS SECTION -->
    <div class="stats-section">
        <div class="stat-item">
            <div class="stat-number">1000+</div>
            <div class="stat-label">Products</div>
        </div>
        <div class="stat-item">
            <div class="stat-number">5000+</div>
            <div class="stat-label">Customers</div>
        </div>
        <div class="stat-item">
            <div class="stat-number">24/7</div>
            <div class="stat-label">Support</div>
        </div>
        <div class="stat-item">
            <div class="stat-number">100%</div>
            <div class="stat-label">Satisfaction</div>
        </div>
    </div>

    <!-- HERO PRODUCTS SECTION -->
    <h2>Featured Products</h2>
    <div class="hero-products">
        <asp:Repeater ID="rptHero" runat="server">
            <ItemTemplate>
                <div class="product-card">
                    <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("ProductName") %>' />
                    <h3><%# Eval("ProductName") %></h3>
                    <p class="price"><%# Eval("Price", "{0:N0}") %> VND</p>
                    <a href='Product.aspx?id=<%# Eval("ProductId") %>' class="btn">View Details</a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <!-- BEST SELLER PRODUCTS SECTION -->
    <h2>Best Seller ROG</h2>
    <div class="best-seller-products">
        <asp:Repeater ID="rptBestSeller" runat="server">
            <ItemTemplate>
                <div class="product-card">
                    <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("ProductName") %>' />
                    <h3><%# Eval("ProductName") %></h3>
                    <p class="price"><%# Eval("Price", "{0:N0}") %> VND</p>
                    <a href='Product.aspx?id=<%# Eval("ProductId") %>' class="btn">View Details</a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <style>
        /* HERO SECTION */
        .hero-section {
            background: linear-gradient(135deg, rgba(255, 107, 0, 0.1), rgba(255, 140, 63, 0.05));
            border-radius: 20px;
            padding: 60px 40px;
            margin-bottom: 50px;
            position: relative;
            overflow: hidden;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 40px;
        }

        .hero-content {
            flex: 1;
            z-index: 2;
        }

        .hero-title {
            font-size: 3rem;
            color: #ff6b00;
            margin-bottom: 20px;
            font-weight: bold;
            animation: fadeInUp 0.8s ease;
        }

        .hero-subtitle {
            font-size: 1.2rem;
            color: #ccc;
            margin-bottom: 30px;
            line-height: 1.6;
            animation: fadeInUp 1s ease;
        }

        .hero-buttons {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
            animation: fadeInUp 1.2s ease;
        }

        .btn-primary, .btn-secondary {
            padding: 15px 30px;
            border-radius: 12px;
            font-size: 1.1rem;
            font-weight: bold;
            text-decoration: none;
            transition: all 0.3s ease;
            display: inline-block;
        }

        .btn-primary {
            background: linear-gradient(135deg, #ff6b00, #ff8c3f);
            color: #fff;
            box-shadow: 0 5px 15px rgba(255, 107, 0, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(255, 107, 0, 0.4);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            border: 2px solid rgba(255, 107, 0, 0.5);
        }

        .btn-secondary:hover {
            background: rgba(255, 107, 0, 0.1);
            border-color: #ff6b00;
        }

        .hero-animation {
            flex: 0 0 300px;
            position: relative;
            height: 300px;
        }

        .floating-card {
            position: absolute;
            font-size: 60px;
            animation: float 3s ease-in-out infinite;
            filter: drop-shadow(0 10px 20px rgba(0,0,0,0.3));
        }

        .card-1 { top: 20%; left: 10%; animation-delay: 0s; }
        .card-2 { top: 50%; right: 10%; animation-delay: 0.5s; }
        .card-3 { bottom: 20%; left: 20%; animation-delay: 1s; }
        .card-4 { top: 10%; right: 30%; animation-delay: 1.5s; }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* SECTION TITLE */
        .section-title {
            font-size: 2.2rem;
            color: #ff6b00;
            text-align: center;
            margin-bottom: 40px;
            font-weight: bold;
        }

        /* FEATURES SECTION */
        .features-section {
            margin-bottom: 60px;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
        }

        .feature-card {
            background: rgba(255, 107, 0, 0.05);
            border: 2px solid rgba(255, 107, 0, 0.2);
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            transition: all 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(255, 107, 0, 0.2);
            border-color: #ff6b00;
            background: rgba(255, 107, 0, 0.1);
        }

        .feature-icon {
            font-size: 3rem;
            margin-bottom: 15px;
        }

        .feature-card h3 {
            color: #ff6b00;
            font-size: 1.4rem;
            margin-bottom: 10px;
        }

        .feature-card p {
            color: #aaa;
            line-height: 1.6;
        }

        /* CATEGORIES SECTION */
        .categories-section {
            margin-bottom: 60px;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 20px;
        }

        .category-card {
            background: linear-gradient(145deg, #1f1f1f, #2a2a2a);
            border: 2px solid rgba(255, 107, 0, 0.2);
            border-radius: 15px;
            padding: 30px 20px;
            text-align: center;
            text-decoration: none;
            transition: all 0.3s ease;
            display: block;
        }

        .category-card:hover {
            transform: translateY(-5px) scale(1.05);
            border-color: #ff6b00;
            box-shadow: 0 10px 25px rgba(255, 107, 0, 0.3);
        }

        .category-icon {
            font-size: 3rem;
            margin-bottom: 15px;
        }

        .category-card h3 {
            color: #ff6b00;
            font-size: 1.3rem;
            margin-bottom: 8px;
        }

        .category-card p {
            color: #888;
            font-size: 0.9rem;
        }

        /* STATS SECTION */
        .stats-section {
            background: linear-gradient(135deg, rgba(255, 107, 0, 0.1), rgba(255, 140, 63, 0.05));
            border-radius: 20px;
            padding: 40px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 30px;
            margin-bottom: 40px;
        }

        .stat-item {
            text-align: center;
        }

        .stat-number {
            font-size: 2.5rem;
            color: #ff6b00;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .stat-label {
            color: #ccc;
            font-size: 1.1rem;
        }

        /* HERO PRODUCTS SECTION */
        h2 {
            color: #ff6b00;
            margin: 30px 0 20px 0;
            font-size: 1.8rem;
        }

        .hero-products,
        .best-seller-products {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            margin-bottom: 40px;
        }

        .product-card {
            background: #222;
            border-radius: 10px;
            padding: 15px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(255, 107, 0, 0.3);
        }

        .product-card img {
            width: 100%;
            height: 200px;
            object-fit: contain;
            background: #111;
            border-radius: 8px;
            margin-bottom: 10px;
        }

        .product-card h3 {
            color: #fff;
            font-size: 1.1rem;
            margin: 10px 0;
            min-height: 50px;
        }

        .product-card .price {
            color: #ff6b00;
            font-size: 1.2rem;
            font-weight: bold;
            margin: 10px 0;
        }

        .product-card .btn {
            display: inline-block;
            padding: 10px 20px;
            background: #ff6b00;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px;
            transition: background 0.3s;
        }

        .product-card .btn:hover {
            background: #ff8c3f;
        }

        /* RESPONSIVE */
        @media (max-width: 768px) {
            .hero-section {
                flex-direction: column;
                padding: 40px 20px;
            }

            .hero-title {
                font-size: 2rem;
            }

            .hero-subtitle {
                font-size: 1rem;
            }

            .hero-animation {
                flex: 0 0 200px;
                height: 200px;
            }

            .floating-card {
                font-size: 40px;
            }

            .section-title {
                font-size: 1.8rem;
            }

            .features-grid, .categories-grid {
                grid-template-columns: 1fr;
            }

            .stats-section {
                grid-template-columns: repeat(2, 1fr);
            }

            .hero-products,
            .best-seller-products {
                grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
                gap: 15px;
            }

            .product-card h3 {
                font-size: 1rem;
                min-height: 40px;
            }
        }
    </style>
</asp:Content>
