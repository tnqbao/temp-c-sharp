<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="DoAnCaNhan.Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="info-container">
        <div class="info-header">
            <h1>🖥️ About QuocBaoPC</h1>
            <p class="info-subtitle">Professional computer hardware provider with top-tier authenticity</p>
        </div>

        <!-- ABOUT US -->
        <div class="info-section">
            <div class="section-icon">ℹ️</div>
            <h2>About Us</h2>
            <p>
                <strong>QuocBaoPC</strong> is a computer hardware retail chain specializing in authentic PC components, gaming equipment, and tech accessories. 
                With years of experience in the industry, we are committed to providing customers with high-quality products at the most competitive prices.
            </p>
            <p>
                We are proud to be official partners of major brands such as ASUS, MSI, Gigabyte, Intel, AMD, NVIDIA, and many other renowned manufacturers.
            </p>
        </div>

        <!-- MISSION -->
        <div class="info-section">
            <div class="section-icon">🎯</div>
            <h2>Mission</h2>
            <div class="mission-grid">
                <div class="mission-card">
                    <div class="mission-icon">✅</div>
                    <h3>Quality</h3>
                    <p>100% authentic products with verified origins</p>
                </div>
                <div class="mission-card">
                    <div class="mission-icon">💰</div>
                    <h3>Pricing</h3>
                    <p>Best market prices with frequent promotions</p>
                </div>
                <div class="mission-card">
                    <div class="mission-icon">🤝</div>
                    <h3>Service</h3>
                    <p>Dedicated consultation and 24/7 support</p>
                </div>
                <div class="mission-card">
                    <div class="mission-icon">🛡️</div>
                    <h3>Warranty</h3>
                    <p>Excellent warranty policy with flexible returns</p>
                </div>
            </div>
        </div>

        <!-- PRODUCTS -->
        <div class="info-section">
            <div class="section-icon">📦</div>
            <h2>Products & Services</h2>
            <div class="products-list">
                <div class="product-item">
                    <span class="product-icon">🎯</span>
                    <div>
                        <h4>PC Components</h4>
                        <p>CPU, VGA, RAM, SSD, Mainboard, PSU, Case...</p>
                    </div>
                </div>
                <div class="product-item">
                    <span class="product-icon">🎮</span>
                    <div>
                        <h4>Gaming Gear</h4>
                        <p>Gaming mice, keyboards, headsets, monitors...</p>
                    </div>
                </div>
                <div class="product-item">
                    <span class="product-icon">💻</span>
                    <div>
                        <h4>Gaming Laptops</h4>
                        <p>ASUS ROG, MSI, Acer Predator, Lenovo Legion...</p>
                    </div>
                </div>
                <div class="product-item">
                    <span class="product-icon">🔧</span>
                    <div>
                        <h4>PC Building Service</h4>
                        <p>Consultation, assembly, and custom installation</p>
                    </div>
                </div>
                <div class="product-item">
                    <span class="product-icon">🛠️</span>
                    <div>
                        <h4>Maintenance & Repair</h4>
                        <p>Cleaning, upgrades, and computer repairs</p>
                    </div>
                </div>
                <div class="product-item">
                    <span class="product-icon">📱</span>
                    <div>
                        <h4>Tech Accessories</h4>
                        <p>USB drives, external HDDs, hubs, adapters...</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- CONTACT INFO -->
        <div class="info-section">
            <div class="section-icon">📞</div>
            <h2>Contact Information</h2>
            <div class="contact-grid">
                <div class="contact-card">
                    <div class="contact-icon">📍</div>
                    <h3>Address</h3>
                    <p>123 ABC Street, XYZ District<br/>Ho Chi Minh City</p>
                </div>
                <div class="contact-card">
                    <div class="contact-icon">☎️</div>
                    <h3>Hotline</h3>
                    <p>0123.456.789<br/>0987.654.321</p>
                </div>
                <div class="contact-card">
                    <div class="contact-icon">📧</div>
                    <h3>Email</h3>
                    <p>contact@quocbaopc.vn<br/>support@quocbaopc.vn</p>
                </div>
                <div class="contact-card">
                    <div class="contact-icon">🕒</div>
                    <h3>Business Hours</h3>
                    <p>Mon - Sat: 8:00 AM - 9:00 PM<br/>Sunday: 8:00 AM - 6:00 PM</p>
                </div>
            </div>
        </div>

        <!-- WHY CHOOSE US -->
        <div class="info-section highlight-section">
            <div class="section-icon">⭐</div>
            <h2>Why Choose QuocBaoPC?</h2>
            <div class="why-choose-list">
                <div class="why-item">
                    <span class="why-number">01</span>
                    <div class="why-content">
                        <h4>Official Partner</h4>
                        <p>Official distributor of world-leading brands</p>
                    </div>
                </div>
                <div class="why-item">
                    <span class="why-number">02</span>
                    <div class="why-content">
                        <h4>Authentic Products</h4>
                        <p>100% genuine products with warranty seals and VAT invoices</p>
                    </div>
                </div>
                <div class="why-item">
                    <span class="why-number">03</span>
                    <div class="why-content">
                        <h4>Competitive Pricing</h4>
                        <p>Best market prices with frequent special offers</p>
                    </div>
                </div>
                <div class="why-item">
                    <span class="why-number">04</span>
                    <div class="why-content">
                        <h4>Expert Consultation</h4>
                        <p>Experienced technical team providing professional advice</p>
                    </div>
                </div>
                <div class="why-item">
                    <span class="why-number">05</span>
                    <div class="why-content">
                        <h4>Nationwide Delivery</h4>
                        <p>Fast shipping to all provinces across the country</p>
                    </div>
                </div>
                <div class="why-item">
                    <span class="why-number">06</span>
                    <div class="why-content">
                        <h4>24/7 Support</h4>
                        <p>Always ready to assist and answer customer questions</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        .info-container {
            max-width: 1000px;
            margin: 0 auto;
        }

        .info-header {
            text-align: center;
            margin-bottom: 50px;
            padding: 40px 20px;
            background: linear-gradient(135deg, rgba(255, 107, 0, 0.1), rgba(255, 140, 63, 0.05));
            border-radius: 20px;
        }

        .info-header h1 {
            font-size: 2.5rem;
            color: #ff6b00;
            margin-bottom: 15px;
        }

        .info-subtitle {
            font-size: 1.2rem;
            color: #ccc;
        }

        .info-section {
            margin-bottom: 50px;
            padding: 30px;
            background: rgba(255, 255, 255, 0.02);
            border-radius: 15px;
            border: 1px solid rgba(255, 107, 0, 0.1);
        }

        .section-icon {
            font-size: 3rem;
            text-align: center;
            margin-bottom: 20px;
        }

        .info-section h2 {
            color: #ff6b00;
            font-size: 2rem;
            margin-bottom: 20px;
            text-align: center;
        }

        .info-section p {
            color: #ccc;
            line-height: 1.8;
            font-size: 1.1rem;
            margin-bottom: 15px;
        }

        /* Mission Grid */
        .mission-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .mission-card {
            background: rgba(255, 107, 0, 0.05);
            border: 2px solid rgba(255, 107, 0, 0.2);
            border-radius: 12px;
            padding: 25px;
            text-align: center;
            transition: all 0.3s ease;
        }

        .mission-card:hover {
            transform: translateY(-5px);
            border-color: #ff6b00;
            box-shadow: 0 10px 20px rgba(255, 107, 0, 0.2);
        }

        .mission-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .mission-card h3 {
            color: #ff6b00;
            font-size: 1.3rem;
            margin-bottom: 10px;
        }

        .mission-card p {
            color: #aaa;
            font-size: 0.95rem;
            line-height: 1.5;
            margin: 0;
        }

        /* Products List */
        .products-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 15px;
            margin-top: 30px;
        }

        .product-item {
            display: flex;
            align-items: flex-start;
            gap: 15px;
            padding: 20px;
            background: rgba(255, 107, 0, 0.03);
            border-radius: 10px;
            border-left: 4px solid #ff6b00;
            transition: all 0.3s ease;
        }

        .product-item:hover {
            background: rgba(255, 107, 0, 0.08);
            transform: translateX(5px);
        }

        .product-icon {
            font-size: 2rem;
            flex-shrink: 0;
        }

        .product-item h4 {
            color: #ff6b00;
            font-size: 1.2rem;
            margin-bottom: 5px;
        }

        .product-item p {
            color: #aaa;
            font-size: 0.95rem;
            margin: 0;
            line-height: 1.4;
        }

        /* Contact Grid */
        .contact-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .contact-card {
            background: linear-gradient(145deg, #1f1f1f, #2a2a2a);
            border: 2px solid rgba(255, 107, 0, 0.2);
            border-radius: 12px;
            padding: 25px;
            text-align: center;
            transition: all 0.3s ease;
        }

        .contact-card:hover {
            border-color: #ff6b00;
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(255, 107, 0, 0.2);
        }

        .contact-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .contact-card h3 {
            color: #ff6b00;
            font-size: 1.2rem;
            margin-bottom: 10px;
        }

        .contact-card p {
            color: #ccc;
            font-size: 0.95rem;
            line-height: 1.6;
            margin: 0;
        }

        /* Why Choose Us */
        .highlight-section {
            background: linear-gradient(135deg, rgba(255, 107, 0, 0.08), rgba(255, 140, 63, 0.05));
            border: 2px solid rgba(255, 107, 0, 0.2);
        }

        .why-choose-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .why-item {
            display: flex;
            gap: 20px;
            align-items: flex-start;
            padding: 20px;
            background: rgba(0, 0, 0, 0.3);
            border-radius: 10px;
            transition: all 0.3s ease;
        }

        .why-item:hover {
            background: rgba(255, 107, 0, 0.1);
            transform: translateX(5px);
        }

        .why-number {
            font-size: 2rem;
            font-weight: bold;
            color: #ff6b00;
            flex-shrink: 0;
            line-height: 1;
        }

        .why-content h4 {
            color: #ff6b00;
            font-size: 1.2rem;
            margin-bottom: 8px;
        }

        .why-content p {
            color: #aaa;
            font-size: 0.95rem;
            margin: 0;
            line-height: 1.5;
        }

        /* Student Section */
        .student-section {
            background: linear-gradient(135deg, rgba(255, 107, 0, 0.1), rgba(255, 140, 63, 0.08));
            border: 2px solid rgba(255, 107, 0, 0.3);
        }

        .student-info {
            max-width: 600px;
            margin: 0 auto;
        }

        .info-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .info-table tr {
            border-bottom: 1px solid rgba(255, 107, 0, 0.2);
        }

        .info-table th,
        .info-table td {
            padding: 15px;
            text-align: left;
        }

        .info-table th {
            color: #ff6b00;
            font-weight: bold;
            width: 40%;
        }

        .info-table td {
            color: #ccc;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .info-header h1 {
                font-size: 2rem;
            }

            .info-subtitle {
                font-size: 1rem;
            }

            .info-section {
                padding: 20px;
            }

            .info-section h2 {
                font-size: 1.5rem;
            }

            .mission-grid,
            .products-list,
            .contact-grid,
            .why-choose-list {
                grid-template-columns: 1fr;
            }

            .info-table th,
            .info-table td {
                display: block;
                width: 100%;
            }

            .info-table th {
                padding-bottom: 5px;
            }

            .info-table td {
                padding-top: 5px;
                padding-bottom: 15px;
            }
        }
    </style>
</asp:Content>
