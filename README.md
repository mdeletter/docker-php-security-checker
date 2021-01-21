# Docker PHP security checker

Wraps the Local PHP Security Checker inside a small Docker container.

## Check inside your development
```bash
cd /yourproject
docker run --rm -v $PWD:/app martijn/php-security-checker .
```

## Cache the vulnerability database between checks

```bash
# create a shared folder
mkdir -p ~/tmp/psc

# download the database
docker run -v ~/tmp/psc:/tmp -v $PWD:/app martijn/php-security-checker --update-cache

# project 1
docker run -v ~/tmp/psc:/tmp -v $PWD:/app martijn/php-security-checker --local
# project 2
docker run -v /shared/tmp:/tmp -v $PWD:/app martijn/php-security-checker --local
# ... etc
```

More information:
* https://github.com/fabpot/local-php-security-checker
* https://hub.docker.com/repository/docker/martijn/php-security-checker

