# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.0-darwin-arm64"
      sha256 "0889534b1372e991dc4c0ad186c65c27e8f0a122cad0aa8218cf7715b05fcf92"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.0-darwin-amd64"
      sha256 "aafc14ea11856ea49d4958a22d3f3a91f0203093a2b6cd5f3d66344b1e2d2cd1"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.0-linux-arm64"
      sha256 "b0e964dcd1940427d90d58c74a8e7f49b484d19bdf508dbe854f702efbd00b46"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.0-linux-amd64"
      sha256 "02a4efb38fe5c8145b3ce1d015c85c9b0d1b7630b611ab317fb82606ceede269"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
