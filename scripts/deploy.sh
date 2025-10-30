#!/bin/bash
set -e

# Multi-Environment Deploy Script
# Default to production if not specified
DEPLOY_ENV=${DEPLOY_ENV:-production}

echo "====================================="
echo "DevOps Simulator - Deployment"
echo "====================================="

if [ "$DEPLOY_ENV" = "production" ]; then
    echo "Mode: Production"
    DEPLOY_REGION="us-east-1"
    APP_PORT=8080
    echo "Environment: $DEPLOY_ENV"
    echo "Region: $DEPLOY_REGION"
    echo "Port: $APP_PORT"
    echo "Starting production deployment..."
    
elif [ "$DEPLOY_ENV" = "development" ]; then
    echo "Mode: Development"
    DEPLOY_MODE="docker-compose"
    APP_PORT=3000
    echo "Environment: $DEPLOY_ENV"
    echo "Mode: $DEPLOY_MODE"
    echo "Installing dependencies..."
    npm install
    echo "Starting development server..."
    
else
    echo "Error: Unknown environment $DEPLOY_ENV"
    exit 1
fi

echo "Deployment completed successfully!"
