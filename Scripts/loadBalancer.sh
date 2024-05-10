#!/bin/bash

# Update system packages
sudo apt update
sudo apt upgrade -y

# Install HAProxy
sudo apt install -y haproxy

# Prompt user to enter the IP addresses of the web servers
read -p "Direcció IP del servidor 1: " WEB_SERVER1_IP
read -p "Direcció IP del servidor 2: " WEB_SERVER2_IP

# Configurar HAProxy amb les direccions
cat <<EOF | sudo tee /etc/haproxy/haproxy.cfg
global
    log /dev/log    local0
    log /dev/log    local1 notice
    chroot /var/lib/haproxy
    stats socket /run/haproxy/admin.sock mode 660 level admin
    stats timeout 30s
    user haproxy
    group haproxy
    daemon

defaults
    log     global
    mode    http
    option  httplog
    option  dontlognull
    timeout connect 5000
    timeout client  50000
    timeout server  50000

frontend http_front
    bind *:80
    default_backend http_back

backend http_back
    balance roundrobin
    server web_server1 $WEB_SERVER1_IP:80 check
    server web_server2 $WEB_SERVER2_IP:80 check
EOF

# Provar config de HAProxy 
sudo haproxy -c -f /etc/haproxy/haproxy.cfg

# Reiniciar HAProxy
sudo systemctl restart haproxy

# Permetre tràfic HTTP des del firewall
sudo ufw allow 80/tcp

echo "HAProxy installation and configuration completed successfully!"
