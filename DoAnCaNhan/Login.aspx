<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="login-container">
        <div class="login-box">
            <div class="login-header">
                <div class="icon-circle">
                    <span class="login-icon">🔐</span>
                </div>
                <h2>Đăng nhập</h2>
                <p>Chào mừng bạn trở lại!</p>
            </div>

            <div class="login-body">
                <asp:Label ID="lblMessage" runat="server" CssClass="message" Visible="false"></asp:Label>
                
                <div class="input-group">
                    <span class="input-icon">👤</span>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" Placeholder="Tên đăng nhập" />
                </div>

                <div class="input-group">
                    <span class="input-icon">🔒</span>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" Placeholder="Mật khẩu" />
                </div>

                <div class="remember-forgot">
                    <label class="remember-me">
                        <input type="checkbox" /> Ghi nhớ đăng nhập
                    </label>
                    <a href="#" class="forgot-link">Quên mật khẩu?</a>
                </div>

                <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" CssClass="btn-login" OnClick="btnLogin_Click" />
                
                <div class="divider">
                    <span>hoặc</span>
                </div>

                <p class="switch-form">
                    Chưa có tài khoản? 
                    <asp:HyperLink runat="server" NavigateUrl="~/Register.aspx" CssClass="register-link">Đăng ký ngay</asp:HyperLink>
                </p>
            </div>
        </div>
    </div>

    <style>
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 75vh;
            padding: 20px;
        }

        .login-box {
            background: linear-gradient(145deg, #1f1f1f, #2a2a2a);
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.5);
            width: 100%;
            max-width: 450px;
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

        .login-header {
            background: linear-gradient(135deg, #ff6b00, #ff8c3f);
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

        .login-icon {
            font-size: 40px;
        }

        .login-header h2 {
            color: #fff;
            font-size: 2rem;
            margin: 10px 0;
            font-weight: bold;
        }

        .login-header p {
            color: rgba(255, 255, 255, 0.9);
            font-size: 1rem;
        }

        .login-body {
            padding: 40px 30px;
        }

        .message {
            display: block;
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 8px;
            background: rgba(255, 77, 77, 0.1);
            border: 1px solid #ff4d4d;
            color: #ff4d4d;
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
            border: 2px solid rgba(255, 107, 0, 0.2);
            border-radius: 12px;
            background: rgba(0, 0, 0, 0.2);
            color: #fff;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .input-field:focus {
            outline: none;
            border-color: #ff6b00;
            background: rgba(0, 0, 0, 0.3);
            box-shadow: 0 0 15px rgba(255, 107, 0, 0.2);
        }

        .input-field::placeholder {
            color: #888;
        }

        .remember-forgot {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
            font-size: 0.9rem;
        }

        .remember-me {
            display: flex;
            align-items: center;
            gap: 8px;
            color: #ccc;
            cursor: pointer;
        }

        .remember-me input[type="checkbox"] {
            cursor: pointer;
        }

        .forgot-link {
            color: #ff6b00;
            text-decoration: none;
            transition: 0.3s;
        }

        .forgot-link:hover {
            color: #ff8c3f;
            text-decoration: underline;
        }

        .btn-login {
            width: 100%;
            padding: 15px;
            background: linear-gradient(135deg, #ff6b00, #ff8c3f);
            color: #fff;
            border: none;
            border-radius: 12px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(255, 107, 0, 0.3);
        }

        .btn-login:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(255, 107, 0, 0.4);
        }

        .btn-login:active {
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
            background: rgba(255, 107, 0, 0.2);
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

        .register-link {
            color: #ff6b00;
            font-weight: bold;
            text-decoration: none;
            transition: 0.3s;
        }

        .register-link:hover {
            color: #ff8c3f;
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .login-box {
                border-radius: 15px;
            }

            .login-header, .login-body {
                padding: 30px 20px;
            }

            .login-header h2 {
                font-size: 1.6rem;
            }
        }
    </style>
</asp:Content>
