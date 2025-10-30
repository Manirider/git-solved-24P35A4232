/**
 * System Monitoring Script
 * Supports both production and development modes
 */

const ENV = process.env.NODE_ENV || 'production';

const monitorConfig = {
  production: {
    interval: 60000,
    alertThreshold: 80,
    debugMode: false
  },
  development: {
    interval: 5000,
    alertThreshold: 90,
    debugMode: true,
    verboseLogging: true
  }
};

const config = monitorConfig[ENV];

console.log('=================================');
console.log(`DevOps Simulator - Monitor`);
console.log(`Environment: ${ENV}`);
console.log(`Debug: ${config.debugMode ? 'ENABLED' : 'DISABLED'}`);
console.log('=================================');

function checkSystemHealth() {
  const timestamp = new Date().toISOString();
  
  if (config.debugMode) {
    console.log(`\n[${timestamp}] === DETAILED HEALTH CHECK ===`);
  } else {
    console.log(`[${timestamp}] Checking system health...`);
  }
  
  console.log('✓ CPU usage: Normal');
  console.log('✓ Memory usage: Normal');
  console.log('✓ Disk space: Adequate');
  
  if (config.debugMode) {
    console.log('✓ Hot reload: Active');
    console.log('✓ Debug port: 9229');
  }
  
  console.log('System Status: HEALTHY');
}

console.log(`Monitoring every ${config.interval}ms`);
setInterval(checkSystemHealth, config.interval);
checkSystemHealth();
