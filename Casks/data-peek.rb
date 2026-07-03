cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.21.6"

  on_arm do
    sha256 "c717729988e088e691f6e5b99ab006df2fb630a213048e6b0149d5c4505effcb"
  end

  on_intel do
    sha256 "445466732ae1a727d4b2d188062b477e59d6add4a4b1c7eeffde5185a05e0b3a"
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
