#!/bin/bash

curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb && 

sudo dpkg -i cloudflared.deb && 

sudo cloudflared service install eyJhIjoiYmFlYTBkM2QyZDg1MDZlNGQyYjQyYjJlNTM1NGIwOWIiLCJ0IjoiNmRjZjdiMDktNTAxNS00OWI5LWFlYzQtZmQzMzI2MTg4MDEwIiwicyI6IlpqaGxaVFl3WmpNdFkyWmhOUzAwWWpReUxUaG1aVEF0WmpBMFpXVXhZbU5tTWpSaSJ9
