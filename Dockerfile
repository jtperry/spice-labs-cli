# Base image: Start from goatrodeo
FROM circlejtp/goatrodeo:latest

# Copy ginger binary directly from ginger image
COPY --from=circlejtp/ginger:latest /usr/bin/ginger /usr/bin/ginger

# Copy spicelabs.sh into the final image
COPY ./spice-labs.sh /opt/spice-labs-cli/spice-labs.sh

ENTRYPOINT ["/opt/spice-labs-cli/spice-labs.sh"]
