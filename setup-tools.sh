#!/bin/bash

echo "================================================"
echo "Setup ASP.NET Web Forms Development Tools"
echo "================================================"
echo ""

# Check if running on Linux
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
    echo "❌ This script is for Linux only"
    exit 1
fi

# Update package list
echo "📦 Updating package list..."
sudo apt update

# Install Mono (if not already installed)
echo ""
echo "🔧 Installing Mono framework..."
sudo apt install -y mono-complete mono-xsp4

# Install MSBuild
echo ""
echo "🔨 Installing MSBuild..."
sudo apt install -y msbuild

# Install NuGet
echo ""
echo "📥 Installing NuGet..."
sudo apt install -y nuget

# Check installations
echo ""
echo "================================================"
echo "✅ Installation Complete! Verifying..."
echo "================================================"

echo ""
echo "Mono version:"
mono --version | head -1

echo ""
echo "MSBuild version:"
msbuild -version 2>&1 | grep "Microsoft" || echo "MSBuild installed"

echo ""
echo "NuGet version:"
nuget help 2>&1 | head -1 || echo "NuGet installed"

echo ""
echo "XSP4 (Mono Web Server):"
which xsp4

echo ""
echo "================================================"
echo "🎉 Setup complete!"
echo "================================================"
echo ""
echo "Next steps:"
echo "1. Open the project in JetBrains Rider"
echo "2. Open the .sln file: TranNguyenQuocBao6299.sln"
echo "3. Configure Rider to use Mono MSBuild"
echo "4. Read SETUP_RIDER.md for detailed instructions"
echo ""

