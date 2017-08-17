source config/mars.env

docker-machine create --driver exoscale \
  --exoscale-api-key=$exoscaleApiKey \
  --exoscale-api-secret-key=$exoscaleApiSecret \
  --exoscale-image coreos-stable-1298 \
  --exoscale-instance-profile tiny \
  --exoscale-disk-size 10 \
  --exoscale-ssh-user core \
  kemerovo
  
