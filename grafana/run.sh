chown 472:0 -R /nebi/grafana
docker run -p 3000:3000 --name grafana -d -v /nebi/grafana/data:/var/lib/grafana grafana/grafana
