cask "pdf-next" do
  version "0.9.0"
  sha256 "56d83a80ec9ff122d40c7111fc9a41d3fd21baeb183998a19d63a0f31c75af50"

  url "https://github.com/ricardofrantz/pdf-next/releases/download/v#{version}/pdf-next_#{version}_universal.dmg",
      verified: "github.com/ricardofrantz/pdf-next/"
  name "pdf-next"
  desc "PDF, image and markdown viewer that reloads when the file changes"
  homepage "https://github.com/ricardofrantz/pdf-next"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "pdf-next.app"
  binary "#{appdir}/pdf-next.app/Contents/MacOS/pdf-next", target: "pdf-next"

  zap trash: [
    "~/Library/Application Support/dev.frantz.pdf-next",
    "~/Library/Caches/dev.frantz.pdf-next",
    "~/Library/HTTPStorages/dev.frantz.pdf-next",
    "~/Library/Preferences/dev.frantz.pdf-next.plist",
    "~/Library/Saved Application State/dev.frantz.pdf-next.savedState",
    "~/Library/WebKit/dev.frantz.pdf-next",
  ]

  caveats do
    print <<~EOS
      pdf-next is not code signed, so macOS holds it in quarantine. Either
      install with

        brew install --cask --no-quarantine ricardofrantz/tap/pdf-next

      or, after a normal install, let it through once:

        xattr -d com.apple.quarantine /Applications/pdf-next.app

    EOS
  end
end
