# Docker PHP security checker

Wraps the Local PHP Security Checker inside a small Docker container.

```bash
cd /yourproject
docker run --rm -v $PWD:/app martijn/php-security-checker --path=/app
```

More information:
* https://github.com/fabpot/local-php-security-checker
* https://hub.docker.com/repository/docker/martijn/php-security-checker

