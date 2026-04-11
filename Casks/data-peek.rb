cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.19.1"

  on_arm do
    sha256 "afb654c3f6bdf7a9d2036dde2005a75c4b3fcca2b50d3cd1e3b13531882de80e"
  end

  on_intel do
    sha256 "8a1a260d34bfd371e9bf5a707f433b9a3d6d4e56278d906480008e0defb38d67"
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
