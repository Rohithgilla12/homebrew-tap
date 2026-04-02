cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"

  on_arm do
    sha256 "99ad0dfbd31409958345a852b459b0f6716def3872411682d95f3fa176ffcc0b"
  end

  on_intel do
    sha256 "4325d0076a18a295ed3ff31a062932f59c02aece8ab3ad042f16eeceaf17d9e0"
  end

  url "https://github.com/Rohithgilla12/data-peek/releases/download/v#{version}/data-peek-#{version}-#{arch}.dmg",
      verified: "github.com/Rohithgilla12/data-peek/"
  name "Data Peek"
  desc "Minimal, fast SQL client desktop application"
  homepage "https://github.com/Rohithgilla12/data-peek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "data-peek.app"

  zap trash: [
    "~/Library/Application Support/data-peek",
    "~/Library/Preferences/dev.datapeek.app.plist",
    "~/Library/Saved Application State/dev.datapeek.app.savedState",
  ]
end
