#!/bin/sh

PRIO=0x3000

. /lib/functions.sh

port_mirror() {
	monitor=$(uci -q get switch.mirror.monitor)
	analysis=$(uci -q get switch.mirror.analysis)

	[ -n "$monitor" -a -n "$analysis" ] || return

	ifconfig $analysis up
	for port in $monitor; do
		tc qdisc add dev $port clsact > /dev/null 2>&1
		tc filter add dev $port ingress prio $PRIO matchall skip_sw action mirred egress mirror dev $analysis
		tc filter add dev $port egress prio $PRIO matchall skip_sw action mirred egress mirror dev $analysis
	done
}

for lan in $(ls -d /sys/class/net/lan* | cut -dn -f3 |sort -n); do
	tc filter del dev lan$lan ingress prio $PRIO > /dev/null 2>&1
	tc filter del dev lan$lan egress prio $PRIO > /dev/null 2>&1
done

port_mirror
