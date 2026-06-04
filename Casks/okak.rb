cask "okak" do
  version "0.1.14"

  on_intel do
    sha256 "2d870a87015fc814ea94d9412cfde0d0d5073959fe4ad6875a0a7921a1d9f832"
    url "https://github.com/Lemon-Corporation/okak-release/releases/download/v#{version}/OKAK-#{version}-x64.dmg"
  end
  on_arm do
    sha256 "2d870a87015fc814ea94d9412cfde0d0d5073959fe4ad6875a0a7921a1d9f832"
    url "https://github.com/Lemon-Corporation/okak-release/releases/download/v#{version}/OKAK-#{version}-arm64.dmg"
  end

  name "OKAK"
  desc "Desktop application for OKAK"
  homepage "https://okakai.ru"

  app "OKAK.app"

  zap trash: [
    "~/Library/Application Support/OKAK",
    "~/Library/Preferences/com.okak.app.plist",
    "~/Library/Saved Application State/com.okak.app.savedState",
  ]
end
