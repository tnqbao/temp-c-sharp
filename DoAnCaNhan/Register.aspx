<%@ Page Title="Đăng ký" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="register-container">
        <div class="register-box">
            <div class="register-header">
                <div class="icon-circle">
                    <span class="register-icon">📝</span>
                </div>
                <h2>Đăng ký tài khoản</h2>
                <p>Tạo tài khoản mới để bắt đầu mua sắm!</p>
            </div>

            <div class="register-body">
                <asp:Label ID="lblMessage" runat="server" CssClass="message" Visible="false"></asp:Label>
                
                <div class="input-group">
                    <span class="input-icon">👤</span>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" Placeholder="Tên đăng nhập" />
                </div>

                <div class="input-group">
                    <span class="input-icon">📧</span>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" TextMode="Email" Placeholder="Email" />
                </div>

                <div class="input-group">
                    <span class="input-icon">🔒</span>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" Placeholder="Mật khẩu" />
                </div>

                <div class="input-group">
                    <span class="input-icon">✏️</span>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="input-field" Placeholder="Họ và tên" />
                </div>

                <div class="terms-checkbox">
                    <label>
                        <input type="checkbox" required /> 
                        Tôi đồng ý với <a href="#" class="terms-link">Điều khoản dịch vụ</a> và <a href="#" class="terms-link">Chính sách bảo mật</a>
                    </label>
                </div>

                <asp:Button ID="btnRegister" runat="server" Text="Đăng ký" CssClass="btn-register" OnClick="btnRegister_Click" />
                
                <div class="divider">
                    <span>hoặc</span>
                </div>

                <p class="switch-form">
                    Đã có tài khoản? 
                    <asp:HyperLink runat="server" NavigateUrl="~/Login.aspx" CssClass="login-link">Đăng nhập ngay</asp:HyperLink>
                </p>
            </div>
        </div>
    </div>

    <style>
        .register-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
            padding: 20px;
        }

        .register-box {
            background: linear-gradient(145deg, #1f1f1f, #2a2a2a);
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.5);
            width: 100%;
            max-width: 500px;
            overflow: hidden;
            animation: slideIn 0.5s ease;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .register-header {
            background: linear-gradient(135deg, #28a745, #20c997);
            padding: 40px 30px;
            text-align: center;
            position: relative;
        }

        .icon-circle {
            width: 80px;
            height: 80px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            margin: 0 auto 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            backdrop-filter: blur(10px);
            border: 3px solid rgba(255, 255, 255, 0.3);
        }

        .register-icon {
            font-size: 40px;
        }

        .register-header h2 {
            color: #fff;
            font-size: 2rem;
            margin: 10px 0;
            font-weight: bold;
        }

        .register-header p {
            color: rgba(255, 255, 255, 0.9);
            font-size: 1rem;
        }

        .register-body {
            padding: 40px 30px;
        }

        .message {
            display: block;
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 8px;
            font-weight: 500;
            text-align: center;
        }

        .input-group {
            position: relative;
            margin-bottom: 20px;
        }

        .input-icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 1.3rem;
            z-index: 1;
        }

        .input-field {
            width: 100%;
            padding: 15px 15px 15px 50px;
            border: 2px solid rgba(40, 167, 69, 0.2);
            border-radius: 12px;
            background: rgba(0, 0, 0, 0.2);
            color: #fff;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .input-field:focus {
            outline: none;
            border-color: #28a745;
            background: rgba(0, 0, 0, 0.3);
            box-shadow: 0 0 15px rgba(40, 167, 69, 0.2);
        }

        .input-field::placeholder {
            color: #888;
        }

        .terms-checkbox {
            margin-bottom: 25px;
            font-size: 0.9rem;
        }

        .terms-checkbox label {
            display: flex;
            align-items: flex-start;
            gap: 10px;
            color: #ccc;
            cursor: pointer;
            line-height: 1.6;
        }

        .terms-checkbox input[type="checkbox"] {
            margin-top: 4px;
            cursor: pointer;
        }

        .terms-link {
            color: #28a745;
            text-decoration: none;
            transition: 0.3s;
        }

        .terms-link:hover {
            color: #20c997;
            text-decoration: underline;
        }

        .btn-register {
            width: 100%;
            padding: 15px;
            background: linear-gradient(135deg, #28a745, #20c997);
            color: #fff;
            border: none;
            border-radius: 12px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(40, 167, 69, 0.3);
        }

        .btn-register:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(40, 167, 69, 0.4);
        }

        .btn-register:active {
            transform: translateY(0);
        }

        .divider {
            text-align: center;
            margin: 25px 0;
            position: relative;
        }

        .divider::before,
        .divider::after {
            content: '';
            position: absolute;
            top: 50%;
            width: 40%;
            height: 1px;
            background: rgba(40, 167, 69, 0.2);
        }

        .divider::before {
            left: 0;
        }

        .divider::after {
            right: 0;
        }

        .divider span {
            color: #888;
            background: #1f1f1f;
            padding: 0 10px;
        }

        .switch-form {
            text-align: center;
            color: #ccc;
            font-size: 0.95rem;
        }

        .login-link {
            color: #28a745;
            font-weight: bold;
            text-decoration: none;
            transition: 0.3s;
        }

        .login-link:hover {
            color: #20c997;
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .register-box {
                border-radius: 15px;
            }

            .register-header, .register-body {
                padding: 30px 20px;
            }

            .register-header h2 {
                font-size: 1.6rem;
            }
        }
    </style>
</asp:Content>
