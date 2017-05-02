#!/usr/bin/env bash

systemctl enable bind9
systemctl enable isc-dhcp-server
systemctl start bind9
systemctl start isc-dhcp-server