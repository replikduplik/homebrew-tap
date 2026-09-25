cask "kegwatch" do
  version "1.5.0"
  sha256 "96afaf1a3ca58505c78b98efa788094180ff4221988c86c175a1fd4ca0d65207"

  url "https://github.com/replikduplik/kegwatch-releases/releases/download/v#{version}/Kegwatch-#{version}.dmg",
      verified: "github.com/replikduplik/kegwatch-releases/"
  name "Kegwatch"
  desc "Updater for Homebrew, Cask, App Store and Sparkle apps"
  homepage "https://replikduplik.github.io/kegwatch-site/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Kegwatch.app"

  zap trash: [
    "~/Library/Application Support/Kegwatch",
    "~/Library/Caches/com.cagdassahin.Kegwatch",
    "~/Library/HTTPStorages/com.cagdassahin.Kegwatch",
    "~/Library/Preferences/com.cagdassahin.Kegwatch.plist",
    "~/Library/Saved Application State/com.cagdassahin.Kegwatch.savedState",
  ]
end
