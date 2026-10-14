cask "gloamlog" do
  version "0.6.5"
  sha256 "a4de9d0173f7222373864479ac3950edc602722bba96f5a9ff8506764aea9645"

  url "https://github.com/dasariprashant0/gloamlog/releases/download/v#{version}/Gloamlog.zip"
  name "Gloamlog"
  desc "Work journal that can write itself from Claude Code and Git, kept as local markdown"
  homepage "https://github.com/dasariprashant0/gloamlog"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Gloamlog.app"

  zap trash: [
    "~/Library/Application Support/Gloamlog",
    "~/Library/Preferences/io.github.dasariprashant0.gloamlog.plist",
  ]

  caveats <<~EOS
    Gloamlog is free and open source and is not notarised (no paid Apple developer account).
    Homebrew quarantines downloads, so the first launch shows a Gatekeeper warning unless you
    install with --no-quarantine:

      brew install --cask --no-quarantine dasariprashant0/gloamlog/gloamlog

    Uninstalling never removes your notes. "brew uninstall --zap" also removes the app's
    backups, capture journal and settings under ~/Library.
  EOS
end
