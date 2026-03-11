FROM eclipse-temurin:17-jre

# Install required libraries for native audio
RUN apt-get update && apt-get install -y \
    libgcc-s1 \
    && rm -rf /var/lib/apt/lists/*

# Create Lavalink directory
WORKDIR /opt/Lavalink

# Download Lavalink v4.0.8
RUN apt-get update && apt-get install -y wget && \
    wget -O Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar && \
    apt-get remove -y wget && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

# Download LavaSrc v4.3.0 plugin
RUN mkdir -p plugins && \
    apt-get update && apt-get install -y wget && \
    wget -O plugins/lavasrc-plugin-4.3.0.jar https://github.com/topi314/LavaSrc/releases/download/4.3.0/lavasrc-plugin-4.3.0.jar && \
    apt-get remove -y wget && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

COPY application.yml /opt/Lavalink/application.yml

ENV SERVER_PORT=${PORT:-2333}
ENV LAVALINK_SERVER_PASSWORD=NoBakaPassing21@

EXPOSE ${PORT:-2333}

CMD ["java", "-jar", "Lavalink.jar"]
