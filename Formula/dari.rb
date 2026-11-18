# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.6.7"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.7-darwin-arm64"
      sha256 "c6289869219a8695b68e2d0e0a619bc4a8427d1b54e42e0a9d2130232f211dfa"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.7-darwin-amd64"
      sha256 "f1692b90a7cb63772888ce4d07fb06875d46a3aa8a388698ad79845a5add1360"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.7-linux-arm64"
      sha256 "8947cb0bc78c8548222ffc001f15eeeb6e754d2db2991c4a71ce77fd10b48be4"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.7-linux-amd64"
      sha256 "30f6b398f79428af3bfbea29acc8a8a0d8d8028383020f0cca3bd8e00740b997"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
