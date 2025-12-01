<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="login-container">
        <div class="login-card">
            <div class="login-header">
                <h2>Login</h2>
                <p>Enter your credentials to continue</p>
            </div>

            <asp:Label ID="lblMessage" runat="server" CssClass="alert-message"></asp:Label>
            
            <div class="form-group">
                <label>Username</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Placeholder="Enter username" />
            </div>

            <div class="form-group">
                <label>Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Enter password" />
            </div>

            <div class="form-actions">
                <label class="checkbox-label">
                    <input type="checkbox" /> Remember me
                </label>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-primary" OnClick="btnLogin_Click" />
            
            <div class="form-footer">
                Don't have an account? 
                <asp:HyperLink runat="server" NavigateUrl="/Register.aspx" CssClass="link">Register now</asp:HyperLink>
            </div>
        </div>
    </div>

    <style>
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 70vh;
            padding: 20px;
        }

        .login-card {
            background: #1f1f1f;
            border: 1px solid #333;
            border-radius: 8px;
            width: 100%;
            max-width: 420px;
            padding: 40px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.3);
        }

        .login-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .login-header h2 {
            color: #fff;
            font-size: 1.8rem;
            margin-bottom: 8px;
            font-weight: 600;
        }

        .login-header p {
            color: #999;
            font-size: 0.95rem;
        }

        .alert-message {
            display: block;
            padding: 12px 16px;
            border-radius: 4px;
            margin-bottom: 20px;
            font-size: 0.9rem;
            text-align: center;
            background: rgba(220, 53, 69, 0.1);
            border: 1px solid rgba(220, 53, 69, 0.3);
            color: #dc3545;
        }

        .alert-message:empty {
            display: none;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            color: #ccc;
            font-size: 0.9rem;
            margin-bottom: 8px;
            font-weight: 500;
        }

        .form-control {
            width: 100%;
            padding: 12px 16px;
            background: #2a2a2a;
            border: 1px solid #444;
            border-radius: 4px;
            color: #fff;
            font-size: 0.95rem;
            transition: all 0.2s;
        }

        .form-control:focus {
            outline: none;
            border-color: #ff6b00;
            background: #2e2e2e;
        }

        .form-control::placeholder {
            color: #666;
        }

        .form-actions {
            margin-bottom: 24px;
        }

        .checkbox-label {
            display: flex;
            align-items: center;
            color: #999;
            font-size: 0.9rem;
            cursor: pointer;
        }

        .checkbox-label input {
            margin-right: 8px;
        }

        .btn-primary {
            width: 100%;
            padding: 14px;
            background: #ff6b00;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.2s;
        }

        .btn-primary:hover {
            background: #ff8c3f;
        }

        .btn-primary:active {
            transform: scale(0.98);
        }

        .form-footer {
            text-align: center;
            margin-top: 24px;
            color: #999;
            font-size: 0.9rem;
        }

        .link {
            color: #ff6b00;
            text-decoration: none;
            font-weight: 500;
        }

        .link:hover {
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .login-card {
                padding: 30px 20px;
            }

            .login-header h2 {
                font-size: 1.5rem;
            }
        }
    </style>
</asp:Content>
