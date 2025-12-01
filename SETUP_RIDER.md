# Hướng dẫn Setup ASP.NET Web Forms trên JetBrains Rider (Linux)

## 📋 Tổng quan dự án
- **Framework:** ASP.NET Web Forms
- **Target Framework:** .NET Framework 4.6.1
- **Database:** SQL Server LocalDB
- **Frontend:** Bootstrap 3.3.7, jQuery 3.3.1

## ⚠️ Lưu ý quan trọng
Dự án này sử dụng **.NET Framework 4.6.1** (chỉ chạy trên Windows). Trên Linux, bạn cần sử dụng **Mono** để chạy.

## 🔧 Các bước Setup trong Rider

### Bước 1: Mở dự án trong Rider
1. Mở JetBrains Rider
2. Chọn `File` → `Open`
3. Navigate đến folder và chọn file `TranNguyenQuocBao6299.sln`
4. Click `OK`

### Bước 2: Cấu hình Mono Runtime
1. Trong Rider, vào `File` → `Settings` (hoặc `Ctrl + Alt + S`)
2. Navigate: `Build, Execution, Deployment` → `Toolset and Build`
3. Trong phần "Use MSBuild version", chọn **Mono MSBuild**
4. Click `OK`

### Bước 3: Restore NuGet Packages
Trong Rider, có 2 cách:
- **Cách 1:** Right-click vào Solution → `Restore NuGet Packages`
- **Cách 2:** Terminal trong Rider, chạy:
  ```bash
  nuget restore TranNguyenQuocBao6299.sln
  ```

Nếu chưa có `nuget`, cài đặt:
```bash
sudo apt install nuget
```

### Bước 4: Build dự án
1. Trong Rider: `Build` → `Build Solution` (hoặc `Ctrl + Shift + B`)
2. Hoặc dùng terminal:
   ```bash
   msbuild DoAnCaNhan/DoAnCaNhan.csproj /p:Configuration=Debug
   ```

### Bước 5: Cấu hình Database (SQL Server LocalDB)
⚠️ **Vấn đề:** SQL Server LocalDB không có sẵn trên Linux.

**Giải pháp:**

#### Option A: Sử dụng SQL Server trên Docker
```bash
# Pull SQL Server image
docker pull mcr.microsoft.com/mssql/server:2019-latest

# Chạy SQL Server container
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=YourStrong@Password123" \
  -p 1433:1433 --name sql-server \
  -d mcr.microsoft.com/mssql/server:2019-latest
```

Sau đó sửa connection string trong `Web.config`:
```xml
<connectionStrings>
  <add name="ShopPCConnection"
       connectionString="Server=localhost,1433;Database=ShopPC;User Id=sa;Password=YourStrong@Password123;TrustServerCertificate=True"
       providerName="System.Data.SqlClient" />
</connectionStrings>
```

#### Option B: Sử dụng SQLite hoặc PostgreSQL
Cần thay đổi code để support database khác.

### Bước 6: Chạy dự án
Trên Linux với Mono, ASP.NET Web Forms khó chạy trực tiếp. Bạn có thể:

#### Option 1: Sử dụng XSP (Mono Web Server)
```bash
# Cài đặt XSP
sudo apt install mono-xsp4

# Chạy ở thư mục DoAnCaNhan
cd DoAnCaNhan
xsp4 --port 8080
```

#### Option 2: Chạy trên IIS Express (cần Windows)
Nếu bạn có Windows hoặc WSL2 với Windows.

## 🐛 Troubleshooting

### Lỗi: "Could not load file or assembly"
```bash
# Restore lại NuGet packages
nuget restore TranNguyenQuocBao6299.sln
```

### Lỗi: MSBuild không tìm thấy
```bash
# Cài đặt mono-complete nếu chưa có
sudo apt install mono-complete msbuild
```

### Lỗi Database Connection
- Kiểm tra SQL Server đang chạy
- Kiểm tra connection string trong `Web.config`
- Test connection với:
  ```bash
  sqlcmd -S localhost -U sa -P 'YourStrong@Password123'
  ```

## 📚 Các file quan trọng trong dự án

- **Web.config** - Cấu hình chính (connection string, compilation settings)
- **Site.Master** - Master page layout
- **Global.asax** - Application events
- **Default.aspx** - Trang chủ
- **Admin.aspx** - Trang quản trị
- **Login.aspx / Register.aspx** - Authentication
- **Shop.aspx / Product.aspx** - Shopping pages

## 💡 Khuyến nghị

Vì bạn đang dùng **Linux**, và dự án này là **.NET Framework** (Windows-only), bạn có 3 lựa chọn:

1. **Migrate sang ASP.NET Core** (Recommended) - Cross-platform, hiện đại hơn
2. **Dùng Windows VM** - Chạy Windows trong VirtualBox/VMware
3. **Dùng Mono + XSP** - Có thể có vấn đề compatibility

## 🔗 Tài liệu tham khảo

- [Mono Documentation](https://www.mono-project.com/docs/)
- [Rider Documentation](https://www.jetbrains.com/help/rider/)
- [ASP.NET Web Forms Documentation](https://docs.microsoft.com/en-us/aspnet/web-forms/)

