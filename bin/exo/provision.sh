docker-machine create --driver exoscale \
  --exoscale-api-key=$exoscaleApiKey \
  --exoscale-api-secret-key=$exoscaleApiSecret \
  --exoscale-instance-profile tiny \
  --exoscale-disk-size 10 \
  --exoscale-image coreos-stable \
  --exoscale-ssh-user core \
  kemerovo
  
