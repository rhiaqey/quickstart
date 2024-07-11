# Quickstart

## AWS

For AWS installations first check [this AWS guide](AWS.md).

## Steps

### 1. As root run

```sh
wget --no-cache -O - https://raw.githubusercontent.com/rhiaqey/quickstart/master/01-root-init.sh | bash
```

### 2. Switch to rhiaqey user

```sh
su -l rhiaqey
```

### 3. Clone repository

```sh
git clone https://github.com/rhiaqey/quickstart.git
```

### 4. Prepare user folder and settings

```sh
bash 02-user-prepare.sh
```

### 5. Fill details in .env

```bash
USER_IP # Admin dashboard whitelisted IP 
USER_EMAIL # Let's Encrypt registration email
# //
REDIS_PASSWORD # This needs to be something stronger than the default
# //
HUB_DOMAIN # Public domain 
# //
GATEWAY_DOMAIN # Also public facing domain
```

### 6. Update DNS to point to proper IP(s)

```
Hub and gateway should be already configured in above step with a public domain and properly configured to point DNS to correct IP.
```

### 7. Run server

```sh
bash 03-user-run.sh
```

## Battle tested

* AWS EC2
* DigitalOcean Droplets
* Vultr Compute