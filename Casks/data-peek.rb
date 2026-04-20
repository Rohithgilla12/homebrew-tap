cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"

  on_arm do
    sha256 "dff382ac6b5765beac08b1ded871f0fbd437071fda9050ec7965f1a45f520a4c"
  end

  on_intel do
    sha256 "417e0a2f195082737276c282c0ef00ebb4d5710f0241aad10af05306344980e8"
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
