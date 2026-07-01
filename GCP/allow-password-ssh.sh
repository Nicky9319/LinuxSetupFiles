#!/bin/bash
set -e

echo "Enabling SSH password authentication..."

# Main sshd config
if grep -q "^PasswordAuthentication" /etc/ssh/sshd_config; then
    sed -i 's/^PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
else
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
fi

# Cloud image override (Ubuntu on GCP)
CLOUD_CFG="/etc/ssh/sshd_config.d/60-cloudimg-settings.conf"

if [ -f "$CLOUD_CFG" ]; then
    if grep -q "^PasswordAuthentication" "$CLOUD_CFG"; then
        sed -i 's/^PasswordAuthentication.*/PasswordAuthentication yes/' "$CLOUD_CFG"
    else
        echo "PasswordAuthentication yes" >> "$CLOUD_CFG"
    fi
fi

# Ensure PAM is enabled
if grep -q "^UsePAM" /etc/ssh/sshd_config; then
    sed -i 's/^UsePAM.*/UsePAM yes/' /etc/ssh/sshd_config
else
    echo "UsePAM yes" >> /etc/ssh/sshd_config
fi

# Restart SSH
systemctl restart ssh || systemctl restart sshd

echo "Current SSH configuration:"
sshd -T | grep passwordauthentication