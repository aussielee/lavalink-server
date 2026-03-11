FROM eclipse-temurin:17-jre-alpine

# Install wget and dependencies
RUN apk add --no-cache wget ca-certificates

# Create Lavalink directory
WORKDIR /opt/Lavalink

# Download Lavalink v4.0.8
RUN wget -O Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar

# Download LavaSrc v4.3.0 plugin
RUN mkdir -p plugins && wget -O plugins/lavasrc-plugin-4.3.0.jar https://github.com/topi314/LavaSrc/releases/download/4.3.0/lavasrc-plugin-4.3.0.jar

COPY application.yml /opt/Lavalink/application.yml

ENV SERVER_PORT=${PORT:-2333}
ENV LAVALINK_SERVER_PASSWORD=NoBakaPassing21@

EXPOSE ${PORT:-2333}

CMD ["java", "-jar", "Lavalink.jar"]
