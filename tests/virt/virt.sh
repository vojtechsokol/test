#!/bin/sh -eux

cat /proc/1/cgroup
cat /proc/1/sched | head -n 1
cat /proc/cpuinfo | grep hypervisor -m1 && echo hypervisor present || echo no hypervisor
systemd-detect-virt 2> /dev/null || echo no systemd-detect-virt
