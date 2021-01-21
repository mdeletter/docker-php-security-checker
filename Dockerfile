FROM alpine:latest AS build
RUN apk add --no-cache curl
RUN apk add --no-cache ca-certificates
RUN curl -L https://github.com/fabpot/local-php-security-checker/releases/download/v1.0.0/local-php-security-checker_1.0.0_linux_386 --output /bin/php-security-checker
RUN chmod 755 /bin/php-security-checker

FROM scratch
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=build /bin/php-security-checker /bin/php-security-checker
WORKDIR /app
ENTRYPOINT ["/bin/php-security-checker"]
CMD ["--help"]
