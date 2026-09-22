cask "kegwatch" do
  version "1.4.0"
  sha256 "b5797fd6d31dc3b1598085e90efb94039214ebc0702c4bbc6364dd44d426fd16"

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
