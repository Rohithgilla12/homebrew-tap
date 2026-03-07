cask "data-peek" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"

  on_arm do
    sha256 "92f916aaeb123e9f70cecc290365c7679467f9775db3656f9a2f5a923cf68ba4"
  end

  on_intel do
    sha256 "bb700eea2c5ef880f2bb848ca07fa84fa47367f43fab0a8f68badbcfe409bfdb"
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

  app "Data Peek.app"

  zap trash: [
    "~/Library/Application Support/data-peek",
    "~/Library/Logs/Data Peek",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.datapeek.app.sfl3",
    "~/Library/Preferences/dev.datapeek.app.plist",
    "~/Library/Saved Application State/dev.datapeek.app.savedState",
  ]
end
