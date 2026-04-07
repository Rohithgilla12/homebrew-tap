cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"

  on_arm do
    sha256 "7db33c904eb12416605b8af67e7b9e44923b3b306384ef6c084b26751f703886"
  end

  on_intel do
    sha256 "b3412cc5c5544b8609ff9c2a4ff9e4c7caaf2d42d6d8e32238bbc46f9119cb5c"
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
