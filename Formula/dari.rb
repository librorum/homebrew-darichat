# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.8.0-darwin-arm64"
      sha256 "1087077dc4c4b766a51bac0a7fcc7a06757e5e9373118870f22eb595ef4f4646"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.8.0-darwin-amd64"
      sha256 "e1dc07d4562aafc9d3fa7f038f4b39eff8c33279f87f939b33c4e3dc7fb4adf1"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.8.0-linux-arm64"
      sha256 "aaeabb7b429a465a5a33e44890a8f0ca2e8b85a26a7fee0cb4d3adde9a5f27f7"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.8.0-linux-amd64"
      sha256 "b8cb9fbce4c4df832338b587fbc12aab5ed120d4aca3fc35e62245a02db821b5"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
