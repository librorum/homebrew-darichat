# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.8.2"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.8.2-darwin-arm64"
      sha256 "a9539fcaddce3e1b46c5c27dcba574f21dc38b9f57b4a317b64e28b9def37895"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.8.2-darwin-amd64"
      sha256 "9935184b99d610256bf377524b6c4ae980c1a52aaf9f3836404f4996422d24c3"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.8.2-linux-arm64"
      sha256 "9795adc4489b3e8d696fc24db0dc4931564251e31b49720e61d99e02120c767d"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.8.2-linux-amd64"
      sha256 "4c8fcd327c6e33298a3888fb4f35b9e1d2bf1ce1aff522a16a652ad4d883fcfe"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
