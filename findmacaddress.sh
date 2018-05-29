arping -f -I $(ip route show match 0/0 | awk '{print $5, $3}')
sudo ip route list
sudo ip neigh
