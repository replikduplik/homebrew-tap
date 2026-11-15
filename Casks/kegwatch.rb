cask "kegwatch" do
  version "1.6.5"
  sha256 "4a3ce4ca8745a128bdeaee3da94578e8ea65bbe6b8b4aa2c0fd1da966664daf5"

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
