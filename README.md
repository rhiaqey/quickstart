# Quickstart

## Steps

1. As root run

```sh
wget -O - https://raw.githubusercontent.com/rhiaqey/quickstart/master/01-root-init.sh | bash
```

2. Switch to rhiaqey user

```sh
su -l rhiaqey
```

3. Clone repository

```sh
gh repo clone rhiaqey/quickstart
```

4. Prepare user folder and settings

```sh
bash 02-user-prepare.sh
```

5. Fill details in .env

6. Run server

```sh
bash 03-user-run.sh
```
