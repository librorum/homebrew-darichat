# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.4.7"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.7-darwin-arm64"
      sha256 "24e0138879f9f3387f1ff18902f6dedb0d2002ab7350ba3e1bf8ccddee366600"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.7-darwin-amd64"
      sha256 "adb164665551c77e7003fe22e021f920dc152e78b9794448017baa12433ac0f5"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.7-linux-arm64"
      sha256 "edc972390d3a5b19ce23ab53f464b4207337e0c964c166d905b82083e46da3f7"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.7-linux-amd64"
      sha256 "c0a9a3c6406fa2fd3743d6110558632fefefee267acfd4c7c1179933fb68d00b"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
