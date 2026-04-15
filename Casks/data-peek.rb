cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.20.1"

  on_arm do
    sha256 "c1527235461bcee83ec4b192a27c6dd4c845ee112b72ada6ba5018d5d3766744"
  end

  on_intel do
    sha256 "03b0ba484f56ee0f813af313b1d257c596bee43b363809e6e84a79fd86900f8a"
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
