# ricardofrantz/homebrew-tap

Homebrew packages for my own software.

```sh
brew install --cask ricardofrantz/tap/pdf-next
xattr -dr com.apple.quarantine /Applications/pdf-next.app
```

The second line is needed while the app is unsigned: macOS quarantines
anything downloaded and refuses the first launch. Homebrew used to offer
`--no-quarantine` for this and removed it in 5.0, deliberately — it will not
help you past a Gatekeeper check any more. Run it again after an upgrade,
which installs a fresh copy.

## What is here

- **[pdf-next](https://github.com/ricardofrantz/pdf-next)** — a small PDF,
  image and markdown viewer that reloads the document within a second of the
  file changing on disk. Built for the LaTeX and Typst compile loop.

The casks follow the upstream releases; a workflow in this repository checks
once a day and commits the version bump itself.
