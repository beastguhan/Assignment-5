#!/bin/bash

echo "🚀 Starting DevOps Infrastructure Automation..."

echo "🔍 Checking Docker..."
docker --version || { echo "Docker not installed"; exit 1; }

echo "🔍 Checking Docker Compose..."
docker compose version || { echo "Docker Compose not installed"; exit 1; }

echo "📦 Pulling images..."
docker compose pull

echo "▶️ Starting services..."
docker compose up -d

echo "⏳ Waiting for services..."
sleep 20

echo "✅ Services running:"
docker compose ps

echo ""
echo "🌐 Access URLs:"
echo "App:       http://localhost"
echo "Jenkins:   http://localhost:8080"
