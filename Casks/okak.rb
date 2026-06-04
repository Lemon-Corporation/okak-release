cask "okak" do
  version "0.1.18"

  on_intel do
    sha256 "a22caaa18638a572e2390b68e715acc78c4ca5053170a60c1f8ea6831f160314"
    url "https://github.com/Lemon-Corporation/okak-release/releases/download/v#{version}/OKAK-#{version}-x64.dmg"
  end
  on_arm do
    sha256 "a22caaa18638a572e2390b68e715acc78c4ca5053170a60c1f8ea6831f160314"
    url "https://github.com/Lemon-Corporation/okak-release/releases/download/v#{version}/OKAK-#{version}-arm64.dmg"
  end

  name "OKAK"
  desc "Desktop application for OKAK"
  homepage "https://okakai.ru"

  app "OKAK.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/OKAK.app"],
                   sudo: false
  rescue
    # Ignore errors if quarantine is not present or command fails
  end

  zap trash: [
    "~/Library/Application Support/OKAK",
    "~/Library/Preferences/com.okak.app.plist",
    "~/Library/Saved Application State/com.okak.app.savedState",
  ]
end
