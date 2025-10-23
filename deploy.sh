#!/bin/bash

# Personal Website Deployment Script
# This script builds and prepares the Jekyll site for deployment

echo "🚀 Building Personal Portfolio Website..."

# Clean previous build
echo "🧹 Cleaning previous build..."
bundle exec jekyll clean

# Build the site
echo "🔨 Building site..."
bundle exec jekyll build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo "📁 Site files are in the _site directory"
    echo "🌐 You can now deploy the _site directory to any static hosting service"
    echo ""
    echo "📋 Deployment options:"
    echo "   • GitHub Pages: Push to gh-pages branch"
    echo "   • Netlify: Connect repository and deploy"
    echo "   • Vercel: Import project and deploy"
    echo "   • Any web server: Upload _site contents"
    echo ""
    echo "🔗 To preview locally: bundle exec jekyll serve"
else
    echo "❌ Build failed! Check the error messages above."
    exit 1
fi
