cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.22.0"

  on_arm do
    sha256 "132d8628ed717cd5b22a853765ebb00cb9214889bcaadaa1118b3484e1b40a9f"
  end

  on_intel do
    sha256 "01729b2cb3a942b4aa4cc3ae5defbd1c04ee1c27c5996a6de3abf3e0a2049556"
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
