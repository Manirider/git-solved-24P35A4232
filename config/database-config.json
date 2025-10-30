{
  "production": {
    "connection": {
      "host": "prod-db.example.com",
      "port": 5432,
      "database": "devops_production",
      "ssl_mode": "require",
      "pool_size": 20
    },
    "backup": {
      "enabled": true,
      "schedule": "0 2 * * *",
      "retention_days": 30
    }
  },
  "development": {
    "connection": {
      "host": "localhost",
      "port": 5432,
      "database": "devops_development",
      "ssl_mode": "disable",
      "pool_size": 5
    },
    "backup": {
      "enabled": false,
      "schedule": "manual"
    },
    "features": {
      "seed_data": true,
      "debug_queries": true
    }
  }
}
