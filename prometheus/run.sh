docker run -p 9090:9090 --name prometheus -d -v /nebi/prometheus/data:/prometheus -v /nebi/prometheus/config/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
