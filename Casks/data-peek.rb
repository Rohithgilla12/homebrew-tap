cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"

  on_arm do
    sha256 "9cbaaf008aec57c88c6d7d18d201fd9a43da6dbbd03855eb87c2eb9bcfa1143a"
  end

  on_intel do
    sha256 "a5c5ff6bfe60fe69e67e08a57ace4e57096060ec5788d281129ad465a43a9088"
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
