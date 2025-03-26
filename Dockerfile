# syntax=docker/dockerfile:1.9

FROM ghcr.io/mastodon/mastodon:v4.3.6
COPY app/lib/activitypub/activity/create.rb app/lib/activitypub/activity/create.rb

# Set the running user for resulting container
USER mastodon
# Expose default Puma ports
EXPOSE 3000
# Set container tini as default entry point
ENTRYPOINT ["/usr/bin/tini", "--"]
