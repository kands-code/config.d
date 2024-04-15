source-env ($nu.default-config-dir
  | path join "theme.nu"
);

$env.config = {
  # true or false to enable or disable the welcome banner at startup
  show_banner: false
  history: {
    max_size: 100_000
    sync_on_enter: true
    # "sqlite" or "plaintext"
    file_format: "sqlite"
    isolation: false
  }
  filesize: {
    # true => KB, MB, GB (ISO standard)
    # false => KiB, MiB, GiB (Windows standard)
    metric: true
    # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, auto
    format: "auto"
  }
  color_config: $env.theme.dark_theme
}

### self config

# utils config
$env.GPG_TTY = (tty)
$env.GNUPGHOME = ($nu.home-path
  | path join ".local"
  | path join "share"
  | path join "gnupg"
)

## functions

# daily update
def dailyup [] {
  if (not (which brew | is-empty)) {
    brew update
    brew upgrade
    brew autoremove
    brew cleanup --prune=all
  }
  if (not (which rustup | is-empty)) {
    rustup update;
    (cargo install --all-features
        "mdbook" "mdbook-katex" "mdbook-toc"
        "wasm-pack"
    )
  }
}

# pandoc wrapper
def cv2pdf [
  file_name: string # file name to convert
  file_type: string = "markdown", # file type from
] {
  if (not (which pandoc | is-empty)
    and not (which lualatex | is-empty)) {
    let output_name = ($file_name
      | path basename
      | split row "."
      | get 0
      | { parent: $env.PWD, stem: $in, extension: "pdf" }
      | path join
    )
    (^pandoc -f $file_type 
      -t "pdf"
      $file_name
      -o $output_name
      "--pdf-engine=lualatex"
      $"--metadata-file=($nu.home-path
        | path join "projects"
        | path join "config.d"
        | path join "others"
        | path join "pmeta.yaml"
      )"
    )
  } else {
      print "nothing here"
  }
}

# yt-dlp wrapper
def yd [
    url: string, # url for downloading
] {
  if (not (which yt-dlp | is-empty)
    and not (which ffmpeg | is-empty)) {
    if ($url | str length | $in == 0) {
      let url_span = (metadata $url).span;
      error make {
        msg: "please give a url"
        label: {
          text: "url right here",
          span: $url_span
        }
      }
    } else {
      (^yt-dlp
        -o "%(uploader_id)s/%(playlist_title)s/p%(playlist_index)03d-%(title)s.%(ext)s"
        -f "bestvideo+bestaudio"
        --recode-video="mp4"
        --write-auto-subs
        --sub-format="vtt"
        --sub-langs="en.*,zh-Hans"
        --embed-subs
        $url
      )
    }
  } else {
    print "nothing here"
  }
}

def reload-dock [] {
  do --capture-errors {
    ^defaults write com.apple.dock ResetLaunchPad -bool true
  } | ^killall Dock
}

