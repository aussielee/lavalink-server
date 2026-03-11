# Lavalink Server with LavaSrc

Lavalink v4 server with LavaSrc plugin for direct Spotify, Apple Music, Deezer, and Yandex Music support.

## Features
- YouTube, SoundCloud, Bandcamp, Twitch, Vimeo support
- **Spotify** - Direct playback (requires Spotify API credentials)
- **Apple Music** - Direct playback
- **Deezer** - Direct playback
- **Yandex Music** - Direct playback

## Deploy to Railway

1. Create new Railway project
2. Connect this GitHub repo
3. Add environment variables (see below)
4. Deploy

## Environment Variables

| Variable | Required | Description |
|----------|----------|-------------|
| `LAVALINK_PASSWORD` | Yes | Password for bot connection (default: NoBakaPassing21@) |
| `SPOTIFY_CLIENT_ID` | No* | Spotify API Client ID (for Spotify playback) |
| `SPOTIFY_CLIENT_SECRET` | No* | Spotify API Client Secret |
| `DEEZER_MASTER_KEY` | No | Deezer master decryption key |
| `YANDEX_ACCESS_TOKEN` | No | Yandex Music access token |

*Required for Spotify support

## Usage

After deployment, your Lavalink node URL will be:
```
https://your-app-name.up.railway.app:443
```

Use this URL in your bot's Lavalink client configuration.

## Getting Spotify Credentials

1. Go to https://developer.spotify.com/dashboard
2. Create an app
3. Copy Client ID and Client Secret
4. Add to Railway environment variables

## LavaSrc Plugin

This server includes the [LavaSrc](https://github.com/topi314/LavaSrc) plugin v4.3.0 which provides native support for:
- Spotify tracks, playlists, albums
- Apple Music tracks, playlists, albums  
- Deezer tracks, playlists, albums
- Yandex Music tracks, playlists, albums

## Bot Integration

To use LavaSrc sources in your bot:
- Spotify: `spsearch:query` or direct Spotify URLs
- Apple Music: `amsearch:query` or direct Apple Music URLs
- Deezer: `dzsearch:query`
- Yandex: `ymsearch:query`

Without LavaSrc, your bot falls back to YouTube search which often returns wrong results.
