# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.1-darwin-arm64"
      sha256 "60bf37cd9707708b7bb7f4ba57fa308f07284268040798c5ce62c3b97a505392"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.1-darwin-amd64"
      sha256 "85ec87ce4d90433d3717e16cb0def3948a18154a8bb022b568b744ba3c2f70b9"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.1-linux-arm64"
      sha256 "778a0672abf2df4c2f8ca664bf808bc4de7769627f51c734304a90796e71b94e"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.1-linux-amd64"
      sha256 "c3561d73170e88e3b4761f2d0bbd58a63821cea00847164158523b3d4913e918"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
