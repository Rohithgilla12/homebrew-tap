cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"

  on_arm do
    sha256 "1ffaff7d061ec41ba9521c01819afcd4e7c386209bb8725e5a2940b4c06279a9"
  end

  on_intel do
    sha256 "97d364ed7993d6ff573f68370d79a81a1a91a3305cb6c0c96180a526b383d6e8"
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
