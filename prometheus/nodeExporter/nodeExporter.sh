docker run --name host_node_exporter --net host -v /proc:/host/proc:ro -v /sys:/host/sys:ro -v /:/rootfs:ro -d --restart always   prom/node-exporter
