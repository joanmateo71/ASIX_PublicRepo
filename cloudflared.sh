#!/bin/bash

curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb && 
sudo dpkg -i cloudflared.deb && 
sudo cloudflared service install eyJhIjoiYmFlYTBkM2QyZDg1MDZlNGQyYjQyYjJlNTM1NGIwOWIiLCJ0IjoiNmRjZjdiMDktNTAxNS00OWI5LWFlYzQtZmQzMzI2MTg4MDEwIiwicyI6Ill6TXpOemRoWWpndFpHVXpNUzAwTkRsaUxUZzVOMlV0Wkdaa1pHSTRNV0l3T1RoaCJ9