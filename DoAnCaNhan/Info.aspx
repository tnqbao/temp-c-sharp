<%@ Page Title="Thông Tin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="DoAnCaNhan.Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="info-container">
        <div class="info-header">
            <h1>🖥️ Giới thiệu về QuocBaoPC</h1>
            <p class="info-subtitle">Chuyên cung cấp linh kiện máy tính chính hãng, uy tín hàng đầu</p>
        </div>

        <!-- ABOUT US -->
        <div class="info-section">
            <div class="section-icon">ℹ️</div>
            <h2>Về chúng tôi</h2>
            <p>
                <strong>QuocBaoPC</strong> là hệ thống cửa hàng chuyên cung cấp linh kiện máy tính, thiết bị gaming và phụ kiện công nghệ chính hãng. 
                Với nhiều năm kinh nghiệm trong ngành, chúng tôi cam kết mang đến cho khách hàng những sản phẩm chất lượng cao với giá cả cạnh tranh nhất.
            </p>
            <p>
                Chúng tôi tự hào là đối tác chính thức của các thương hiệu lớn như ASUS, MSI, Gigabyte, Intel, AMD, NVIDIA, và nhiều hãng nổi tiếng khác.
            </p>
        </div>

        <!-- MISSION -->
        <div class="info-section">
            <div class="section-icon">🎯</div>
            <h2>Sứ mệnh</h2>
            <div class="mission-grid">
                <div class="mission-card">
                    <div class="mission-icon">✅</div>
                    <h3>Chất lượng</h3>
                    <p>Cam kết 100% sản phẩm chính hãng, nguồn gốc rõ ràng</p>
                </div>
                <div class="mission-card">
                    <div class="mission-icon">💰</div>
                    <h3>Giá cả</h3>
                    <p>Giá tốt nhất thị trường, nhiều chương trình khuyến mãi</p>
                </div>
                <div class="mission-card">
                    <div class="mission-icon">🤝</div>
                    <h3>Dịch vụ</h3>
                    <p>Tư vấn tận tình, hỗ trợ 24/7</p>
                </div>
                <div class="mission-card">
                    <div class="mission-icon">🛡️</div>
                    <h3>Bảo hành</h3>
                    <p>Chế độ bảo hành tốt, đổi trả linh hoạt</p>
                </div>
            </div>
        </div>

        <!-- PRODUCTS -->
        <div class="info-section">
            <div class="section-icon">📦</div>
            <h2>Sản phẩm & Dịch vụ</h2>
            <div class="products-list">
                <div class="product-item">
                    <span class="product-icon">🎯</span>
                    <div>
                        <h4>Linh kiện PC</h4>
                        <p>CPU, VGA, RAM, SSD, Mainboard, PSU, Case...</p>
                    </div>
                </div>
                <div class="product-item">
                    <span class="product-icon">🎮</span>
                    <div>
                        <h4>Gaming Gear</h4>
                        <p>Chuột, bàn phím, tai nghe, màn hình gaming...</p>
                    </div>
                </div>
                <div class="product-item">
                    <span class="product-icon">💻</span>
                    <div>
                        <h4>Laptop Gaming</h4>
                        <p>ASUS ROG, MSI, Acer Predator, Lenovo Legion...</p>
                    </div>
                </div>
                <div class="product-item">
                    <span class="product-icon">🔧</span>
                    <div>
                        <h4>Dịch vụ build PC</h4>
                        <p>Tư vấn, lắp ráp, cài đặt theo yêu cầu</p>
                    </div>
                </div>
                <div class="product-item">
                    <span class="product-icon">🛠️</span>
                    <div>
                        <h4>Bảo trì & Sửa chữa</h4>
                        <p>Vệ sinh, nâng cấp, sửa chữa máy tính</p>
                    </div>
                </div>
                <div class="product-item">
                    <span class="product-icon">📱</span>
                    <div>
                        <h4>Phụ kiện công nghệ</h4>
                        <p>USB, ổ cứng di động, hub, adapter...</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- CONTACT INFO -->
        <div class="info-section">
            <div class="section-icon">📞</div>
            <h2>Thông tin liên hệ</h2>
            <div class="contact-grid">
                <div class="contact-card">
                    <div class="contact-icon">📍</div>
                    <h3>Địa chỉ</h3>
                    <p>123 Đường ABC, Quận XYZ<br/>Thành phố Hồ Chí Minh</p>
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
                    <h3>Giờ làm việc</h3>
                    <p>T2 - T7: 8:00 - 21:00<br/>Chủ nhật: 8:00 - 18:00</p>
                </div>
            </div>
        </div>

        <!-- WHY CHOOSE US -->
        <div class="info-section highlight-section">
            <div class="section-icon">⭐</div>
            <h2>Tại sao chọn QuocBaoPC?</h2>
            <div class="why-choose-list">
                <div class="why-item">
                    <span class="why-number">01</span>
                    <div class="why-content">
                        <h4>Đối tác chính thức</h4>
                        <p>Là đại lý chính thức của các thương hiệu hàng đầu thế giới</p>
                    </div>
                </div>
                <div class="why-item">
                    <span class="why-number">02</span>
                    <div class="why-content">
                        <h4>Sản phẩm chính hãng</h4>
                        <p>100% sản phẩm chính hãng, có tem bảo hành, hóa đơn VAT</p>
                    </div>
                </div>
                <div class="why-item">
                    <span class="why-number">03</span>
                    <div class="why-content">
                        <h4>Đội ngũ chuyên nghiệp</h4>
                        <p>Tư vấn viên giàu kinh nghiệm, nhiệt tình</p>
                    </div>
                </div>
                <div class="why-item">
                    <span class="why-number">04</span>
                    <div class="why-content">
                        <h4>Giao hàng toàn quốc</h4>
                        <p>Miễn phí ship nội thành, giao hàng toàn quốc trong 24-48h</p>
                    </div>
                </div>
                <div class="why-item">
                    <span class="why-number">05</span>
                    <div class="why-content">
                        <h4>Bảo hành tận tâm</h4>
                        <p>Hỗ trợ bảo hành, đổi trả trong vòng 30 ngày</p>
                    </div>
                </div>
                <div class="why-item">
                    <span class="why-number">06</span>
                    <div class="why-content">
                        <h4>Thanh toán linh hoạt</h4>
                        <p>Hỗ trợ trả góp 0%, thanh toán online, COD</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- STUDENT INFO -->
        <div class="info-section student-section">
            <div class="section-icon">🎓</div>
            <h2>Thông tin đồ án</h2>
            <div class="student-info">
                <table class="info-table">
                    <tr>
                        <th>Sinh viên thực hiện:</th>
                        <td>Trần Nguyễn Quốc Bảo</td>
                    </tr>
                    <tr>
                        <th>MSSV:</th>
                        <td>28211106299</td>
                    </tr>
                    <tr>
                        <th>Mã lớp:</th>
                        <td>IS 385 K</td>
                    </tr>
                    <tr>
                        <th>Đề tài:</th>
                        <td>Website bán linh kiện máy tính - QuocBaoPC</td>
                    </tr>
                    <tr>
                        <th>Công nghệ:</th>
                        <td>ASP.NET Web Forms, C#, SQL Server</td>
                    </tr>
                    <tr>
                        <th>GitHub:</th>
                        <td><a href="https://github.com/tnqbao" target="_blank" style="color: #ff6b00; text-decoration: none;">github.com/tnqbao</a></td>
                    </tr>
                    <tr>
                        <th>LinkedIn:</th>
                        <td><a href="https://www.linkedin.com/in/tnqb2004/" target="_blank" style="color: #ff6b00; text-decoration: none;">linkedin.com/in/tnqb2004</a></td>
                    </tr>
                    <tr>
                        <th>Năm học:</th>
                        <td>2024 - 2025</td>
                    </tr>
                </table>
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
