# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.0-darwin-arm64"
      sha256 "85e9cf36b8ec748c616f3f6c945701f8341d7772fb3000c910332fcdbc2f2fab"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.0-darwin-amd64"
      sha256 "0c0d3d3e19e24027cf87ec255ba267ee8c8b2429b915c944ec36201412970948"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.0-linux-arm64"
      sha256 "e5bcbe2f2112b1a32d4549946bdae9b940beb037ee5200e83884a95c0813adf7"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.0-linux-amd64"
      sha256 "611a89b2b3d18ddf80c8d4e6359bf70175d9ae13161715b9e0dc04db6d63214d"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
