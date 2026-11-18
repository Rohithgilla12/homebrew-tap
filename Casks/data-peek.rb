cask "data-peek" do
  version "0.39.1"
  sha256 "db9c47bcfb4b306b628eab2d36f22bcb80729f6cae36e3357fe221155c595db2"

  url "https://github.com/Rohithgilla12/data-peek/releases/download/v#{version}/data-peek-#{version}-arm64.dmg",
      verified: "github.com/Rohithgilla12/data-peek/"
  name "Data Peek"
  desc "Minimal, fast SQL client desktop application"
  homepage "https://github.com/Rohithgilla12/data-peek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :catalina"

  app "data-peek.app"

  zap trash: [
    "~/Library/Application Support/data-peek",
    "~/Library/Preferences/dev.datapeek.app.plist",
    "~/Library/Saved Application State/dev.datapeek.app.savedState",
  ]
end
