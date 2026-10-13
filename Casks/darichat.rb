# 앱이 스스로 업데이트하므로 버전을 고정하지 않고 늘 최신 DMG 를 받는다.
cask "darichat" do
  version :latest
  sha256 :no_check

  url "https://darichat.com/api/file/download/darichat-mac-arm64.dmg"
  name "DariChat"
  name "다리챗"
  desc "Team chat with translation and AI"
  homepage "https://darichat.com/"

  depends_on arch: :arm64
  depends_on formula: "librorum/darichat/dari"
  depends_on macos: :monterey

  app "DariChat.app"
end
