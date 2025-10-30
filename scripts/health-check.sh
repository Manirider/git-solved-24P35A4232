#!/bin/bash
echo "Performing system health check..."
uptime
df -h | grep -v tmpfs
echo "✅ System health check completed successfully!"

