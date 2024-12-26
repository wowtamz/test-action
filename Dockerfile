FROM alpine:3.10

ENV GITHUB_OUTPUT=/tmp/github_output

# Add bash and basic utilities
RUN apk add --no-cache bash

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Ensure script has correct permissions
RUN chmod +x /entrypoint.sh

# Set working directory
WORKDIR /workspace

ENTRYPOINT ["/entrypoint.sh"]
