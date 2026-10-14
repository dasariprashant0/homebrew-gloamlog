# Homebrew tap for Gloamlog

[Gloamlog](https://github.com/dasariprashant0/gloamlog) is a free, open-source work journal for macOS that can write itself from Claude Code and Git. One markdown file a day, kept on your Mac.

```bash
brew install --cask --no-quarantine dasariprashant0/gloamlog/gloamlog
```

`--no-quarantine` skips the Gatekeeper warning that an unnotarised app gets on first launch (the project has no paid Apple developer account; see [why](https://github.com/dasariprashant0/gloamlog/blob/main/docs/INSTALL.md)). Without it, approve the app once in System Settings > Privacy & Security > Open Anyway. Homebrew verifies the download against the SHA-256 in the cask.

Update with `brew upgrade --cask gloamlog`, or use Gloamlog > Check for Updates… inside the app. Uninstall with `brew uninstall --cask gloamlog`; your notes are never touched.

The cask is updated by [`scripts/update-tap.sh`](https://github.com/dasariprashant0/gloamlog/blob/main/scripts/update-tap.sh) in the main repository on every release.
