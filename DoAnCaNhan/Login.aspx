<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-container">
        <div class="form-box">
            <h2>Đăng nhập</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="message"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" Placeholder="Username" />
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" Placeholder="Password" />
            <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" CssClass="btn" OnClick="btnLogin_Click" />
            <p class="switch-form">Chưa có tài khoản? <a href="Register.aspx">Đăng ký</a></p>
        </div>
    </div>

    <style>
        body { background: linear-gradient(135deg,#1e1e1e,#121212); font-family:'Segoe UI', sans-serif; }
        .form-container { display:flex; justify-content:center; align-items:center; min-height:70vh; padding:20px; }
        .form-box { background:#1b1b1b; padding:30px; border-radius:12px; width:100%; max-width:400px; box-shadow:0 8px 20px rgba(0,0,0,0.7); text-align:center; }
        .form-box h2 { color:#ff6b00; margin-bottom:20px; font-size:1.8rem; }
        .message { margin-bottom:15px; display:block; color:#ff4d4d; font-weight:bold; }
        .input-field { width:100%; padding:12px 15px; margin:10px 0; border:none; border-radius:8px; background:#272727; color:#fff; font-size:1rem; transition:0.3s; }
        .input-field:focus { outline:none; box-shadow:0 0 6px #ff6b00; background:#333; }
        .btn { width:100%; padding:12px; margin-top:15px; background:#ff6b00; color:#fff; font-weight:bold; border:none; border-radius:8px; cursor:pointer; transition:0.3s; }
        .btn:hover { background:#ff8c3f; }
        .switch-form { margin-top:15px; font-size:0.9rem; color:#ccc; }
        .switch-form a { color:#0ff; text-decoration:none; transition:0.3s; }
        .switch-form a:hover { text-decoration:underline; }
        @media(max-width:480px){ .form-box{padding:20px;} }
    </style>
</asp:Content>
