# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.7.3"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.3-darwin-arm64"
      sha256 "1e7aafca9425b7bc4bc95e0fdb6a2a62bb9e58e0be58c0221f71341d3cb903f1"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.3-darwin-amd64"
      sha256 "be323291d20c764edc9c2a564ec10243866d206534e2f6abe964095aa7196a89"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.3-linux-arm64"
      sha256 "71326a9df124cd35242d4118ecba835bdf8057a88e7b613db0001000fafc28bd"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.3-linux-amd64"
      sha256 "4eaa1ed652e3b69cb1fbf23320481987d32470ccea18a90000588f66f0644ace"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
