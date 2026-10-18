# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.3.6"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.6-darwin-arm64"
      sha256 "6260430291df2c4659d1e0b9343d1e4264a8f674bcabab2cdd5e792212c3c6ec"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.6-darwin-amd64"
      sha256 "0a6ff5245e971b5d9e1901f9e03b60142b29913b6e4bfa5cee31f2925d0eff6d"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.6-linux-arm64"
      sha256 "733309b5919b5052c8d7c2b045b22f110ee4e073455d4353343f551ee991cb79"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.6-linux-amd64"
      sha256 "c0901b889a73ed4946cbc8be0929d7d2bb20588d5501b0da3d58147ad92d62e7"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
