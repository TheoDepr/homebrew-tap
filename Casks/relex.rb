cask "relex" do
    version "1.1.2"
    sha256 "13716157e81c5d7e040163bd8ad32170ce36760578f5456b402e074800f0e71c"
  
    url "https://github.com/theodepr/relex/releases/download/v#{version}/Relex-#{version}.dmg",
        verified: "github.com/theodepr/relex/"
    name "Relex"
    desc "Relex – a macOS app for relaxing automation"
    homepage "https://github.com/theodepr/relex"
  
    depends_on macos: ">= :sequoia"
  
    app "Relex.app"
  
    zap trash: [
      "~/Library/Application Support/Relex",
      "~/Library/Preferences/com.relex.app.plist",
      "~/Library/Logs/Relex",
    ]
  
    livecheck do
      url :url
      strategy :github_latest
    end
  end
