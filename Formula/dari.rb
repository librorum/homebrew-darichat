# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.2.1-darwin-arm64"
      sha256 "2f13d6edaee96dc556948beca06244081a99dc18c46c6208e76366afb2faf265"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.2.1-darwin-amd64"
      sha256 "c237cc279e573e0400514d75b11a2091dccaca70b7a51a5466b08e1f51274f11"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.2.1-linux-arm64"
      sha256 "33eb59af7887d703334919439ecd94f6aebd315e802e61bc89b45b20d9615e8d"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.2.1-linux-amd64"
      sha256 "615eb238ba6afd384dca41e85c930ec116f77a263be119793b739920cf687904"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
