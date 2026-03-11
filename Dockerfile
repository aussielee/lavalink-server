FROM freyacodes/lavalink:4-alpine-latest

# Download LavaSrc v4.3.0 plugin for Spotify/Apple Music support
ADD https://github.com/topi314/LavaSrc/releases/download/4.3.0/lavasrc-plugin-4.3.0.jar /opt/Lavalink/plugins/

COPY application.yml /opt/Lavalink/application.yml

ENV SERVER_PORT=${PORT:-2333}
ENV LAVALINK_SERVER_PASSWORD=NoBakaPassing21@

EXPOSE ${PORT:-2333}

WORKDIR /opt/Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
