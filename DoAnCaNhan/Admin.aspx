<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="admin-container">
        <h1>⚙️ System Administration</h1>
        
        <div class="tabs">
            <button class="tab-btn active" onclick="showTab('shops')">Manage Shops</button>
            <button class="tab-btn" onclick="showTab('products')">Manage Products</button>
        </div>

        <div id="shops-tab" class="tab-content active">
            <div class="section-header">
                <h2>Shop List</h2>
                <button class="btn-add" onclick="showShopForm()">+ Add Shop</button>
            </div>

            <div id="shop-form" class="form-container" style="display:none;">
                <h3><asp:Label ID="lblShopFormTitle" runat="server" Text="Add New Shop"></asp:Label></h3>
                <asp:HiddenField ID="hfShopId" runat="server" />
                <div class="form-row">
                    <label>Shop Name</label>
                    <asp:TextBox ID="txtShopName" runat="server" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-row">
                    <label>Address</label>
                    <asp:TextBox ID="txtShopAddress" runat="server" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-row">
                    <label>Phone</label>
                    <asp:TextBox ID="txtShopPhone" runat="server" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-actions">
                    <asp:Button ID="btnSaveShop" runat="server" Text="Save" CssClass="btn-save" OnClick="btnSaveShop_Click" />
                    <button type="button" class="btn-cancel" onclick="hideShopForm()">Cancel</button>
                </div>
            </div>

            <asp:GridView ID="gvShops" runat="server" AutoGenerateColumns="False" CssClass="data-grid"
                OnRowCommand="gvShops_RowCommand" DataKeyNames="ShopId">
                <Columns>
                    <asp:BoundField DataField="ShopId" HeaderText="ID" />
                    <asp:BoundField DataField="ShopName" HeaderText="Shop Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button runat="server" CommandName="EditShop" CommandArgument='<%# Eval("ShopId") %>' 
                                Text="Edit" CssClass="btn-edit" />
                            <asp:Button runat="server" CommandName="DeleteShop" CommandArgument='<%# Eval("ShopId") %>' 
                                Text="Delete" CssClass="btn-delete" OnClientClick="return confirm('Confirm delete this shop?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

        <div id="products-tab" class="tab-content">
            <div class="section-header">
                <h2>Product List</h2>
                <button class="btn-add" onclick="showProductForm()">+ Add Product</button>
            </div>

            <div id="product-form" class="form-container" style="display:none;">
                <h3><asp:Label ID="lblProductFormTitle" runat="server" Text="Add New Product"></asp:Label></h3>
                <asp:HiddenField ID="hfProductId" runat="server" />
                <div class="form-row">
                    <label>Product Name</label>
                    <asp:TextBox ID="txtProductName" runat="server" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-row">
                    <label>Shop</label>
                    <asp:DropDownList ID="ddlShop" runat="server" CssClass="form-input"></asp:DropDownList>
                </div>
                <div class="form-row">
                    <label>Category</label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-input"></asp:DropDownList>
                </div>
                <div class="form-row">
                    <label>Brand</label>
                    <asp:TextBox ID="txtBrand" runat="server" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-row">
                    <label>Price</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-input" TextMode="Number"></asp:TextBox>
                </div>
                <div class="form-row">
                    <label>Stock</label>
                    <asp:TextBox ID="txtStock" runat="server" CssClass="form-input" TextMode="Number"></asp:TextBox>
                </div>
                <div class="form-row">
                    <label>Image URL</label>
                    <asp:TextBox ID="txtImageUrl" runat="server" CssClass="form-input"></asp:TextBox>
                </div>
                <div class="form-row">
                    <label>Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-input" TextMode="MultiLine" Rows="3"></asp:TextBox>
                </div>
                <div class="form-actions">
                    <asp:Button ID="btnSaveProduct" runat="server" Text="Save" CssClass="btn-save" OnClick="btnSaveProduct_Click" />
                    <button type="button" class="btn-cancel" onclick="hideProductForm()">Cancel</button>
                </div>
            </div>

            <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" CssClass="data-grid"
                OnRowCommand="gvProducts_RowCommand" DataKeyNames="ProductId">
                <Columns>
                    <asp:BoundField DataField="ProductId" HeaderText="ID" />
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                    <asp:BoundField DataField="Brand" HeaderText="Brand" />
                    <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:N0}" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" />
                    <asp:BoundField DataField="ShopName" HeaderText="Shop" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button runat="server" CommandName="EditProduct" CommandArgument='<%# Eval("ProductId") %>' 
                                Text="Edit" CssClass="btn-edit" />
                            <asp:Button runat="server" CommandName="DeleteProduct" CommandArgument='<%# Eval("ProductId") %>' 
                                Text="Delete" CssClass="btn-delete" OnClientClick="return confirm('Confirm delete this product?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>

    <style>
        .admin-container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .admin-container h1 {
            color: #ff6b00;
            margin-bottom: 20px;
        }

        .tabs {
            display: flex;
            gap: 10px;
            margin-bottom: 30px;
            border-bottom: 2px solid #333;
        }

        .tab-btn {
            padding: 12px 24px;
            background: transparent;
            border: none;
            color: #999;
            cursor: pointer;
            font-size: 1rem;
            border-bottom: 2px solid transparent;
            margin-bottom: -2px;
            transition: all 0.2s;
        }

        .tab-btn.active {
            color: #ff6b00;
            border-bottom-color: #ff6b00;
        }

        .tab-content {
            display: none;
        }

        .tab-content.active {
            display: block;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .section-header h2 {
            color: #fff;
            margin: 0;
        }

        .btn-add {
            padding: 10px 20px;
            background: #28a745;
            border: none;
            border-radius: 4px;
            color: #fff;
            cursor: pointer;
            font-weight: 600;
        }

        .btn-add:hover {
            background: #218838;
        }

        .form-container {
            background: #1f1f1f;
            border: 1px solid #333;
            border-radius: 8px;
            padding: 25px;
            margin-bottom: 30px;
        }

        .form-container h3 {
            color: #fff;
            margin-bottom: 20px;
        }

        .form-row {
            margin-bottom: 15px;
        }

        .form-row label {
            display: block;
            color: #ccc;
            margin-bottom: 5px;
            font-size: 0.9rem;
        }

        .form-input {
            width: 100%;
            padding: 10px;
            background: #2a2a2a;
            border: 1px solid #444;
            border-radius: 4px;
            color: #fff;
            font-size: 0.95rem;
        }

        .form-input:focus {
            outline: none;
            border-color: #ff6b00;
        }

        .form-actions {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        .btn-save {
            padding: 10px 24px;
            background: #ff6b00;
            border: none;
            border-radius: 4px;
            color: #fff;
            cursor: pointer;
            font-weight: 600;
        }

        .btn-save:hover {
            background: #ff8c3f;
        }

        .btn-cancel {
            padding: 10px 24px;
            background: #555;
            border: none;
            border-radius: 4px;
            color: #fff;
            cursor: pointer;
        }

        .btn-cancel:hover {
            background: #666;
        }

        .data-grid {
            width: 100%;
            border-collapse: collapse;
            background: #1f1f1f;
            border: 1px solid #333;
            border-radius: 8px;
            overflow: hidden;
        }

        .data-grid th {
            background: #2a2a2a;
            color: #fff;
            padding: 12px;
            text-align: left;
            font-weight: 600;
        }

        .data-grid td {
            padding: 12px;
            border-top: 1px solid #333;
            color: #ccc;
        }

        .data-grid tr:hover {
            background: #252525;
        }

        .btn-edit {
            padding: 6px 12px;
            background: #007bff;
            border: none;
            border-radius: 4px;
            color: #fff;
            cursor: pointer;
            margin-right: 5px;
        }

        .btn-edit:hover {
            background: #0056b3;
        }

        .btn-delete {
            padding: 6px 12px;
            background: #dc3545;
            border: none;
            border-radius: 4px;
            color: #fff;
            cursor: pointer;
        }

        .btn-delete:hover {
            background: #c82333;
        }
    </style>

    <script type="text/javascript">
        function showTab(tabName) {
            document.querySelectorAll('.tab-content').forEach(tab => tab.classList.remove('active'));
            document.querySelectorAll('.tab-btn').forEach(btn => btn.classList.remove('active'));
            
            document.getElementById(tabName + '-tab').classList.add('active');
            event.target.classList.add('active');
        }

        function showShopForm() {
            document.getElementById('shop-form').style.display = 'block';
            document.getElementById('<%= lblShopFormTitle.ClientID %>').innerText = 'Thêm cửa hàng mới';
            document.getElementById('<%= hfShopId.ClientID %>').value = '';
            document.getElementById('<%= txtShopName.ClientID %>').value = '';
            document.getElementById('<%= txtShopAddress.ClientID %>').value = '';
            document.getElementById('<%= txtShopPhone.ClientID %>').value = '';
        }

        function hideShopForm() {
            document.getElementById('shop-form').style.display = 'none';
        }

        function showProductForm() {
            document.getElementById('product-form').style.display = 'block';
            document.getElementById('<%= lblProductFormTitle.ClientID %>').innerText = 'Thêm sản phẩm mới';
            document.getElementById('<%= hfProductId.ClientID %>').value = '';
        }

        function hideProductForm() {
            document.getElementById('product-form').style.display = 'none';
        }
    </script>
</asp:Content>
