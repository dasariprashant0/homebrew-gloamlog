cask "gloamlog" do
  version "0.6.6"
  sha256 "30ed8e8823691959f0c4efc60c55424d28a4e63b079d7dea4584a2eb0fcba026"

  url "https://github.com/dasariprashant0/gloamlog/releases/download/v#{version}/Gloamlog.zip"
  name "Gloamlog"
  desc "Work journal that can write itself from Claude Code and Git"
  homepage "https://github.com/dasariprashant0/gloamlog"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

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
