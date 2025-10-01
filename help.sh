#!/bin/bash

# =============================================================================
# Hugo Docker Development Scripts
# =============================================================================

# Development server (basic)
echo "=== Development Server Commands ==="
echo "docker-compose up hugo-dev"
echo "# Runs Hugo development server with live reload"
echo ""

# Development server with concurrent Tailwind watching
echo "=== Development with Concurrent Tailwind Watching ==="
echo "docker-compose --profile concurrent up hugo-dev-concurrent"
echo "# Runs both Tailwind CSS watching and Hugo server concurrently"
echo ""

# Production build
echo "=== Production Build ==="
echo "docker-compose --profile build run --rm hugo-build"
echo "# Builds production-ready site in public/ directory"
echo ""

# One-liner commands for convenience
echo "=== Quick Commands ==="
echo ""

echo "# Development:"
echo "docker-compose up -d hugo-dev && docker-compose logs -f hugo-dev"
echo ""

echo "# Build only:"
echo "docker-compose --profile build run --rm hugo-build"
echo ""

echo "# Clean up:"
echo "docker-compose down && docker system prune -f"
echo ""

echo "# Rebuild from scratch:"
echo "docker-compose down && docker-compose build --no-cache hugo-dev"
echo ""

# PowerShell versions for Windows users
echo "=== PowerShell Commands (Windows) ==="
echo "# Development:"
echo "docker-compose up -d hugo-dev; docker-compose logs -f hugo-dev"
echo ""
echo "# Build:"
echo "docker-compose --profile build run --rm hugo-build"