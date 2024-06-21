# Run on AWS EC2

## SSH to instance

```bash
chmod 400 "aws-security.pem"
ssh -i "aws-security.pem" ec2-user@instance.region.compute.amazonaws.com
```

## Install docker

```bash
sudo yum update -y
sudo yum install -y docker git htop
sudo usermod -a -G docker ec2-user
sudo service docker start
# Restart server
```

## Install docker-compose

```bash
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
```

## Reboot
```bash
sudo reboot # for docker to work
```
## Run on Lightsail

To access a specific container using the private domain of your container service, you must specify the open port of the
container that will accept your connection request. You do this by formatting the domain of your request as
`<ServiceName>.service.local:<PortNumber>`, in which `<ServiceName>` is the name of your container service and
`<PortNumber>` is the open port of the container that you wish to connect to.
For example, if you create a deployment on your container service named `container-service-1`, and you specify 
a Redis container with port 6379 open, then you should format the domain of your request as 
`container-service-1.service.local:6379`.
