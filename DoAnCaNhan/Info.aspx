<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="DoAnCaNhan.Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="info-container">
        <div class="info-header">
            <h1>Course Information</h1>
            <p class="info-subtitle">IS 385 K - Do An Ky Thuat Thuong Mai Dien Tu</p>
        </div>

        <div class="info-card">
            <div class="info-row">
                <div class="info-label">Class:</div>
                <div class="info-value">IS 385 K</div>
            </div>
            <div class="info-row">
                <div class="info-label">Name:</div>
                <div class="info-value">Tran Nguyen Quoc Bao</div>
            </div>
            <div class="info-row">
                <div class="info-label">ID:</div>
                <div class="info-value">28211106299</div>
            </div>
            <div class="info-row">
                <div class="info-label">GitHub:</div>
                <div class="info-value">
                    <a href="https://github.com/tnqbao" target="_blank" class="link-btn">
                        <span class="link-icon"></span> github.com/tnqbao
                    </a>
                </div>
            </div>
            <div class="info-row">
                <div class="info-label">LinkedIn:</div>
                <div class="info-value">
                    <a href="https://www.linkedin.com/in/tnqb2004/" target="_blank" class="link-btn">
                        <span class="link-icon"></span> linkedin.com/in/tnqb2004
                    </a>
                </div>
            </div>
        </div>
    </div>

    <style>
        .info-container {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
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

        .info-card {
            background: rgba(255, 255, 255, 0.02);
            border: 2px solid rgba(255, 107, 0, 0.3);
            border-radius: 15px;
            padding: 40px;
            margin-bottom: 40px;
            box-shadow: 0 5px 20px rgba(255, 107, 0, 0.1);
        }

        .info-row {
            display: flex;
            padding: 20px 0;
            border-bottom: 1px solid rgba(255, 107, 0, 0.1);
            align-items: center;
        }

        .info-row:last-child {
            border-bottom: none;
        }

        .info-label {
            font-size: 1.2rem;
            color: #ff6b00;
            font-weight: bold;
            width: 150px;
            flex-shrink: 0;
        }

        .info-value {
            font-size: 1.2rem;
            color: #fff;
            flex: 1;
        }

        .link-btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            background: linear-gradient(135deg, rgba(255, 107, 0, 0.2), rgba(255, 140, 63, 0.1));
            border: 2px solid rgba(255, 107, 0, 0.3);
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .link-btn:hover {
            background: linear-gradient(135deg, rgba(255, 107, 0, 0.4), rgba(255, 140, 63, 0.2));
            border-color: #ff6b00;
            transform: translateX(5px);
        }

        .link-icon {
            font-size: 1.2rem;
        }

        .project-info {
            background: rgba(255, 255, 255, 0.02);
            border: 1px solid rgba(255, 107, 0, 0.2);
            border-radius: 15px;
            padding: 40px;
        }

        .project-info h2 {
            color: #ff6b00;
            font-size: 2rem;
            margin-bottom: 15px;
            text-align: center;
        }

        .project-info > p {
            color: #ccc;
            font-size: 1.1rem;
            text-align: center;
            margin-bottom: 40px;
            line-height: 1.6;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .feature-item {
            background: rgba(255, 107, 0, 0.05);
            border: 2px solid rgba(255, 107, 0, 0.2);
            border-radius: 12px;
            padding: 25px;
            text-align: center;
            transition: all 0.3s ease;
        }

        .feature-item:hover {
            transform: translateY(-5px);
            border-color: #ff6b00;
            box-shadow: 0 10px 20px rgba(255, 107, 0, 0.2);
        }

        .feature-icon {
            font-size: 3rem;
            margin-bottom: 15px;
        }

        .feature-item h3 {
            color: #ff6b00;
            font-size: 1.2rem;
            margin-bottom: 10px;
        }

        .feature-item p {
            color: #aaa;
            font-size: 0.95rem;
            line-height: 1.5;
            margin: 0;
        }

        @media (max-width: 768px) {
            .info-header h1 {
                font-size: 2rem;
            }

            .info-subtitle {
                font-size: 1rem;
            }

            .info-card {
                padding: 25px;
            }

            .info-row {
                flex-direction: column;
                align-items: flex-start;
                gap: 10px;
            }

            .info-label {
                width: 100%;
            }

            .link-btn {
                font-size: 0.9rem;
            }

            .features-grid {
                grid-template-columns: 1fr;
            }

            .project-info {
                padding: 25px;
            }

            .project-info h2 {
                font-size: 1.5rem;
            }
        }
    </style>
</asp:Content>
