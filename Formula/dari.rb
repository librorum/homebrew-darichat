# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.6.8"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.8-darwin-arm64"
      sha256 "3c3378e82b7579c32b3307225f747aa6903b3e759b8fa253d2fcc75e17a82c75"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.8-darwin-amd64"
      sha256 "23ea1061256cce574a5d40d3860590634ee592b490e2e7af54f006ded356db35"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.8-linux-arm64"
      sha256 "7d8e6bafb9f755642531a6e1bb627f8dc051877c65ad6790382f600abfb2795a"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.8-linux-amd64"
      sha256 "2f2e2fb7794b500b79a7243964711f0089d17ccf5fd4010c9f8b1b77f487300e"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
