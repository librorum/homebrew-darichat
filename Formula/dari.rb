# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.7.1"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.1-darwin-arm64"
      sha256 "ef13d1a68af2ffc3af24cd9deac4e7a05d1af5c2c53933444c361e1e68bf8b4c"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.1-darwin-amd64"
      sha256 "3b86f256966deface994f185b59d2edb561a9439f4356033ea40eeaf88fcff21"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.1-linux-arm64"
      sha256 "b7e9d2636067cbb0a3da85a1730337222129e2083393d88865beea3ca9bed3b5"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.1-linux-amd64"
      sha256 "0560c58e077dce33b378a632d0bcfbfa3b1216945d80abe4b14bfebea9669ec3"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
