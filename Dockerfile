FROM ubuntu:14.04
MAINTAINER GrupoCITEC <ops@grupocitec.com>

# Locales
RUN locale-gen en_US.UTF-8 pt_BR.UTF-8 es_ES.UTF-8 && \
    update-locale && \
    echo 'LANG="en_US.UTF-8"' > /etc/default/locale

# Install main entrypoint
ADD bin /app/bin/
WORKDIR /app
ENTRYPOINT ["/app/bin/boot"]
# Set default command
CMD ["help"]
