# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.6.6"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.6-darwin-arm64"
      sha256 "c8e75ebc04e35bd7fa5cef62f43a20a754d4e1825c85925375c8819734e04fe0"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.6-darwin-amd64"
      sha256 "84cf19fdadb83c5328cedd40a1ae7079feda218bb61f839c82edc2df232c7c99"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.6-linux-arm64"
      sha256 "04996a5772824545d56ccd920f37f98608c6f8f2c94fc34d9e25b99f3d888822"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.6-linux-amd64"
      sha256 "ae5e28d5b0c1c16bf525fa9712600c4ce2011822af96d1a0c12ba6b9846070c2"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
