#!/bin/bash
echo "🧹 Cleaning logs and temporary files..."
rm -rf /tmp/*
find /var/log -type f -name "*.log" -delete 2>/dev/null || true
echo "✅ Maintenance completed successfully!"
