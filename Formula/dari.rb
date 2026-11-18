# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.6.2"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.2-darwin-arm64"
      sha256 "ffba179e79e4f3e2b61c204ec6414fee2c994f1b16fc2152f0381dcd0ba8147b"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.2-darwin-amd64"
      sha256 "a5a16c3a4e281f8ab11c3a078c5215f7e9cfeb55b929e4c28d83571b73ad360c"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.2-linux-arm64"
      sha256 "e2ea8044c9588365281f2fe374b126c2f2f8808bbb4fce6c96f4b48d9173f71c"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.2-linux-amd64"
      sha256 "355cf7c9c97e50a91f8808ecb56db9c2d8dab0855230ea91ce32af6f9ec62dfd"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
