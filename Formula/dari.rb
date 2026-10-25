# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.4.6"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.6-darwin-arm64"
      sha256 "afee6bde8ad7f861ae05420ff71edaf9128f142ca33d36bdfdd3b2d50cc7e239"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.6-darwin-amd64"
      sha256 "31c6f0de6952ffa3358156c6a83ef3340af4e280cd61a9d08ac01db58a1b6194"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.6-linux-arm64"
      sha256 "7df3ab851518fed0961d82e4ed5f64b8738805994dd58b6966fc0db19afe5a49"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.6-linux-amd64"
      sha256 "c856543a6418169e69ad72697806922054e34753fd5fdfbd461037646c152bb8"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
