#!/bin/sh

uci add system certificates
uci set system.@certificates[-1].key=/etc/urender/key.pem
uci set system.@certificates[-1].cert=/etc/urender/cert.pem
uci set system.@certificates[-1].ca=/etc/urender/ca.pem
