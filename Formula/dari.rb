# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.4.9"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.9-darwin-arm64"
      sha256 "3b0003cd4ede64e878284e06f71b5281425841bb6ae77a3cee222fff18c9a902"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.9-darwin-amd64"
      sha256 "85cef4a1d2e011369c2aa0610bf6c83f9305436fbac6b56167f0dbaf811bf372"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.9-linux-arm64"
      sha256 "8ba54248980a7dd2bf5a00542f331c9b86857b8522cb8db9ab517717ffb9d103"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.9-linux-amd64"
      sha256 "0a252a775015b31d62b7e906f7a6ea7081dd76b569106f6928574543893dd726"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
