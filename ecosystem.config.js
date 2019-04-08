module.exports = {
  apps: [{
    name: 'targit',
    script: './index.js'
  }],
  deploy: {
    production: {
      user: 'ubuntu',
      host: 'ec2-3-19-70-44.us-east-2.compute.amazonaws.com',
      key: '~/.ssh/targit.pem',
      ref: 'origin/master',
      repo: 'https://github.com/targitatx/shopping_cart_service.git',
      path: '/home/ubuntu/Code/targit/',
      // 'post-deploy': 'npm install && pm2 startOrRestart ecosystem.config.js'
    }
  }
}