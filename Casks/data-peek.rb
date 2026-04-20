cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.21.2"

  on_arm do
    sha256 "d6b10c3c937835910b17e37d58a7a33c1c6289befa7ea41efce89a76786e1dd1"
  end

  on_intel do
    sha256 "6c3666cb2d4934f83486bf3aeefe7db9e64928d8a7ca07bc2cfb5dc39941e801"
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
