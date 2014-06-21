FROM bfitzsimmons/base:latest
MAINTAINER Brant Fitzsimmons <brant.fitzsimmons@gmail.com>

# Install memcached.
RUN aptitude -q=2 -y install memcached

# Configure memcached to start when the container starts.
EXPOSE 11211
USER daemon
ENTRYPOINT ["memcached"]
CMD ["-m", "64m", "-I", "5m"]
