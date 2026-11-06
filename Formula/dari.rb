# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.5.3"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.3-darwin-arm64"
      sha256 "7b100f8fc92a9e2b0940822d64459d10abd5f2434ef6bb154c007dcf824be425"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.3-darwin-amd64"
      sha256 "19876a62e12ca6ce2e5e6c240d7df7ef459888edfac4ed1ae615b2a7d249909e"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.3-linux-arm64"
      sha256 "84953489ed39bfa8ac4bbf6f70374a8c0e52ca5c331a6ce3dae1bbd0e7b2367a"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.3-linux-amd64"
      sha256 "7171379f49cd84dbd139d9ff440bcb57d64baede96839f13ccc11dee6d228b84"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
