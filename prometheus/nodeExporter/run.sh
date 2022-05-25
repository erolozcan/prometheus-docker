for a in 50 51 52 53 55 56 57 58 59 60;do
	echo "Copying to NFVSRV$a:/tmp"
	scp ./nodeExporter.sh NFVSRV$a:/tmp

	ssh  NFVSRV$a -t 'docker stop host_node_exporter; docker rm host_node_exporter'

	echo "Starting docker container"
	ssh NFVSRV$a -t 'sudo chmod +x /tmp/nodeExporter.sh ; sudo /tmp/nodeExporter.sh'
done
