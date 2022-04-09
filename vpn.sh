dns_ip=$(sudo barracudavpn --status | grep -P '^D(?:NS|ns)[v4]*:.*[0-9]+.[0-9]+.[0-9]+.[0-9]+' | awk '{print $2}')
sudo systemd-resolve -i tun0 --set-dns=$dns_ip --set-domain=~. --set-domain=critical.pt --set-dnssec=off
