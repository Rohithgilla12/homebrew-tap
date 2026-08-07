cask "data-peek" do
  version "0.29.0"
  sha256 "329ce6f0fca82a77bf2b8b3e19fe65836a700f50a40d73ef4b23f40011ba4532"

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
