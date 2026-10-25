# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.4.8"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.8-darwin-arm64"
      sha256 "2bfc3fab8e93050802a259a43d11cd90107d3763f6a0d06d62013e685f5327fd"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.8-darwin-amd64"
      sha256 "79913b66b2c95c7be8a34ffef713ad565815ab4bb20d831da5adb39414f24fad"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.8-linux-arm64"
      sha256 "49ee4f5f001b8ed1ca827318f95fb5c0f85b58840df2dbe37d44b16b27e9e471"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.8-linux-amd64"
      sha256 "d32f12e8085c1fdbc2ca443406214b6cd8182df02ab2aeb89c51f2d6f5130eb7"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
