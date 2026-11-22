# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.7.8"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.8-darwin-arm64"
      sha256 "e5a34d7b7eb3c3d8e38ace21bec6542205aea1c05eba68553a0d8217b689fba3"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.8-darwin-amd64"
      sha256 "c23b2ac4ea299238613f7e95a383d8616f7f773cd19948c396d0128b8efc6079"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.8-linux-arm64"
      sha256 "17998b0304b7bc62be4db7111032e56f52e70e56a019d79fa464f1ca69936f9c"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.8-linux-amd64"
      sha256 "cce83735fb36913f36805eb18fc49b18dda6c31352292bdd53d653854039e7d8"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
