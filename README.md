# ricardofrantz/homebrew-tap

Homebrew packages for my own software.

```sh
brew tap ricardofrantz/tap
brew install --cask --no-quarantine pdf-next
```

`--no-quarantine` is needed while the app is unsigned; without it macOS
refuses the first launch. See the cask for the alternative.

## What is here

- **[pdf-next](https://github.com/ricardofrantz/pdf-next)** — a small PDF,
  image and markdown viewer that reloads the document within a second of the
  file changing on disk. Built for the LaTeX and Typst compile loop.

The casks follow the upstream releases; a workflow in this repository checks
once a day and opens the version bump itself.
