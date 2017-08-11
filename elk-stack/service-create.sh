docker service create --log-driver=gelf --log-opt gelf-address=udp://localhost:12201 \
                      --name petclinic -p 8080:8080 \
                      --replicas=2 \
                      treeptik/petclinic
