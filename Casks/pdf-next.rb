cask "pdf-next" do
  version "0.14.0"
  sha256 "1de071e077206736ebe96c319678f61e0a2136ef1548174456349ed8a9e0c97e"

  url "https://github.com/ricardofrantz/pdf-next/releases/download/v#{version}/pdf-next_#{version}_universal.dmg",
      verified: "github.com/ricardofrantz/pdf-next/"
  name "pdf-next"
  desc "PDF, image and markdown viewer that reloads when the file changes"
  homepage "https://github.com/ricardofrantz/pdf-next"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "pdf-next.app"
  binary "#{appdir}/pdf-next.app/Contents/MacOS/pdf-next"

  zap trash: [
    "~/Library/Application Support/dev.frantz.pdf-next",
    "~/Library/Caches/dev.frantz.pdf-next",
    "~/Library/HTTPStorages/dev.frantz.pdf-next",
    "~/Library/Preferences/dev.frantz.pdf-next.plist",
    "~/Library/Saved Application State/dev.frantz.pdf-next.savedState",
    "~/Library/WebKit/dev.frantz.pdf-next",
  ]

  caveats <<~EOS
    pdf-next is not signed or notarized yet, so macOS quarantines it and the
    first launch is refused. Let this copy through once:

      xattr -dr com.apple.quarantine "#{appdir}/pdf-next.app"

    Repeat it after an upgrade, which installs a fresh copy.
  EOS
end
