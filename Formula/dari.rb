# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.7.4"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.4-darwin-arm64"
      sha256 "71289f3cbea0de7b98dba1937c04e031fefcb39d7e9df6eb456444d6b5e8ead8"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.4-darwin-amd64"
      sha256 "ea8241160c0b0f25d29cd8f016acc54ebcf1fd9fc8e3d901067139fdcb456481"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.4-linux-arm64"
      sha256 "6a64c03ccf02f04338af362ce6dfb85ee66104623f0fa2ef836b2dbab74cd330"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.4-linux-amd64"
      sha256 "46232153adfdab36873fe22602b5fe8c9676d9b90ef5f5d3b63f88ab18694bc4"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
