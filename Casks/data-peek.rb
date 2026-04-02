cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.16.1"

  on_arm do
    sha256 "210c07c1cc26a575b65ee70906b0062c2915c4b6350d3d0f14d37aa31358086e"
  end

  on_intel do
    sha256 "73f9531997a180cfdf97a0035d10f7f8857d2182f02d52edefaeb59427fe9e08"
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
