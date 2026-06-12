# termux-yt-dlp

A small Termux helper that lets you share YouTube links directly to Termux and download them with `yt-dlp`.

When you share a link to Termux, the script prompts you to choose a download format, then saves the result under `/sdcard/YouTube`.

## Features

- Download videos in best quality, 720p, 480p, or 360p
- Download audio-only MP3 files
- Uses `aria2c` for faster downloads
- Embeds metadata and thumbnails
- Embeds English and Arabic subtitles for video downloads when available
- Removes sponsor segments with SponsorBlock
- Keeps an archive file to avoid downloading the same item twice
- Saves playlists into a folder named after the playlist

## Requirements

Install these packages in Termux:

```sh
pkg update
pkg install yt-dlp aria2 ffmpeg termux-api
```

Enable Termux storage access:

```sh
termux-setup-storage
```

You also need the Termux app installed as an Android share target.

## Installation

Clone the repository, then run the installer from inside the project directory:

```sh
git clone https://github.com/HassanIQ777/termux-yt-dlp.git
cd termux-yt-dlp
chmod +x install.sh termux-url-opener
mkdir -p "$HOME/bin"
./install.sh
```

The installer copies `termux-url-opener` to `~/bin/`, which is where Termux looks for URL opener scripts.

If you edit `termux-url-opener`, rerun:

```sh
./install.sh
```

## Usage

1. Open YouTube or another supported site.
2. Tap Share.
3. Choose Termux.
4. Pick a format:

```text
1) Video (Best Quality)
2) Video (720p)
3) Video (480p)
4) Video (360p)
5) Audio Only (Best MP3)
```

Downloads are saved to:

```text
/sdcard/YouTube
```

For playlists, files are saved to:

```text
/sdcard/YouTube/<playlist title>
```

Downloaded URLs are recorded in:

```text
/sdcard/YouTube/archive.txt
```

## Troubleshooting

If Termux does not appear in the Android share menu, make sure you installed Termux from a source that supports URL opening and that `termux-url-opener` is installed in `~/bin`.

If downloads fail because `/sdcard/YouTube` cannot be created, run:

```sh
termux-setup-storage
```

If `termux-toast` is missing, install Termux:API:

```sh
pkg install termux-api
```

For best compatibility, keep `yt-dlp` updated:

```sh
pkg upgrade yt-dlp
```

## Notes

Only download content you have the right to download. Availability, formats, subtitles, thumbnails, and SponsorBlock data depend on the source site and the individual video.

## License

MIT License. See [LICENSE](LICENSE).
