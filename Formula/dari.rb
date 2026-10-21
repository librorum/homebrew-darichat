# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.3.8"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.8-darwin-arm64"
      sha256 "c95970f8b4896cf8bcdc899e493e3f98a9f5601a24479242ec62bc0f6969766b"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.8-darwin-amd64"
      sha256 "a45dcbccc574aaba88589e75a8322e895787e552a9f6c454655b57201169c12a"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.8-linux-arm64"
      sha256 "af2c6a134c47dea0c44a37a103df1909d21425c457c011f7eaf12510580d83cd"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.8-linux-amd64"
      sha256 "c8d1d29426eff9b512ee03919f3e1211648dd11b1002ef04d68e1bd4b48bd4db"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
