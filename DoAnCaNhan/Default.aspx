<%@ Page Title="Trang Chủ" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- HERO CAROUSEL -->
    <div class="hero-carousel">
        <asp:Repeater ID="rptHero" runat="server">
            <ItemTemplate>
                <div class="hero-slide">
                    <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("ProductName") %>' />
                    <div class="overlay">
                        <a href="~/Pages/ProductDetail.aspx?ProductId=<%# Eval("ProductId") %>" class="btn">Xem thêm</a>
                    </div>
                    <div class="info">
                        <h3><%# Eval("ProductName") %></h3>
                        <p><%# Eval("Price","{0:N0}") %> VNĐ</p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <!-- BEST SELLER ROG -->
    <h2 class="section-title">Best Seller ROG</h2>
    <div class="best-seller-grid">
        <asp:Repeater ID="rptBestSeller" runat="server">
            <ItemTemplate>
                <div class="best-seller-item">
                    <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("ProductName") %>' />
                    <div class="overlay">
                        <a href="~/Pages/ProductDetail.aspx?ProductId=<%# Eval("ProductId") %>" class="btn">Xem thêm</a>
                    </div>
                    <div class="info">
                        <h4><%# Eval("ProductName") %></h4>
                        <p><%# Eval("Price","{0:N0}") %> VNĐ</p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <!-- CSS -->
    <style>
        /* GENERAL */
        body { font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background:#111; color:#eee; }
        h2.section-title { color:#ff6b00; margin:30px 0 15px 0; font-size:1.8rem; }

        /* HERO CAROUSEL */
        .hero-carousel { position:relative; width:100%; height:35vh; max-height:450px; overflow:hidden; border-radius:12px; }
        .hero-slide { position:absolute; top:0; left:0; width:100%; height:100%; opacity:0; transition:opacity 1s ease; }
        .hero-slide.active { opacity:1; z-index:10; }
        .hero-slide img { width:100%; height:100%; object-fit:contain; background:#111; }

        .hero-slide .overlay {
            position:absolute; top:0; left:0; width:100%; height:100%;
            background:rgba(0,0,0,0.5); opacity:0;
            display:flex; justify-content:center; align-items:center;
            transition:0.3s;
        }
        .hero-slide:hover .overlay { opacity:1; }
        .hero-slide .overlay .btn {
            padding:12px 24px; background:#ff6b00; color:#fff; text-decoration:none; border-radius:6px;
            font-weight:bold; box-shadow:0 4px 8px rgba(0,0,0,0.6);
            transition:0.3s;
        }
        .hero-slide .overlay .btn:hover { background:#ff8c3f; }

        .hero-slide .info {
            position:absolute; bottom:15px; left:15px; background:rgba(0,0,0,0.6);
            padding:8px 12px; border-radius:6px;
        }
        .hero-slide .info h3 { margin:0; color:#ff6b00; font-size:1.2rem; }
        .hero-slide .info p { margin:2px 0 0 0; color:#0ff; font-weight:bold; }

        /* BEST SELLER GRID */
        .best-seller-grid { display:flex; flex-wrap:wrap; gap:15px; margin-bottom:50px; }
        .best-seller-item { flex:1 1 calc(25% - 15px); background:#222; border-radius:10px; overflow:hidden; position:relative; transition:transform 0.3s, box-shadow 0.3s; }
        .best-seller-item:hover { transform:translateY(-5px); box-shadow:0 6px 15px rgba(0,0,0,0.6); }

        .best-seller-item img { width:100%; height:180px; object-fit:contain; background:#111; }
        .best-seller-item .overlay { position:absolute; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.5); opacity:0; display:flex; justify-content:center; align-items:center; transition:0.3s; }
        .best-seller-item:hover .overlay { opacity:1; }
        .best-seller-item .overlay .btn { padding:8px 16px; background:#ff6b00; color:#fff; border-radius:5px; text-decoration:none; font-weight:bold; }
        .best-seller-item .info { padding:8px 12px; background:rgba(0,0,0,0.6); color:#eee; }
        .best-seller-item .info h4 { margin:0 0 5px 0; color:#ff6b00; font-size:1rem; }
        .best-seller-item .info p { margin:0; color:#0ff; font-weight:bold; }

        /* RESPONSIVE */
        @media(max-width:1200px){ .best-seller-item{flex:1 1 calc(33.33% - 15px);} }
        @media(max-width:768px){ .best-seller-item{flex:1 1 calc(50% - 15px);} .hero-carousel{height:40vh;} }
        @media(max-width:480px){ .best-seller-item{flex:1 1 100%;} .hero-carousel{height:45vh;} }
    </style>

    <!-- JS -->
    <script>
        let currentSlide=0, slides=[], slideInterval;
        function showSlide(i){ slides.forEach(s=>s.classList.remove('active')); slides[i].classList.add('active'); }
        function nextSlide(){ currentSlide=(currentSlide+1)%slides.length; showSlide(currentSlide); }
        function startSlide(){ slideInterval=setInterval(nextSlide,4000); }
        function pauseSlide(){ clearInterval(slideInterval); }
        window.onload=function(){
            slides=Array.from(document.querySelectorAll('.hero-slide'));
            if(slides.length>0){ showSlide(0); startSlide(); }
        };
    </script>
</asp:Content>
