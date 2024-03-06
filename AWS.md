# Run on AWS EC2

## SSH to instance

```bash
chmod 400 "aws-security.pem"
ssh -i "aws-security.pem" ec2-user@instance.region.compute.amazonaws.com
```

## Install docker

```bash
sudo yum update -y
sudo yum install -y docker git
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
