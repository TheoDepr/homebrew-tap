cask "relex" do
    version "1.1.0"
    sha256 "f4963335430715aaca8eb84fe28777806f998d1ab317d8cbebc78c65e81a0315"
  
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