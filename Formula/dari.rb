# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.4-darwin-arm64"
      sha256 "a04fbeb268b5be3528f29b0ea9ef19696bf56cba26fc25e4d95d5f5ff58ac02e"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.4-darwin-amd64"
      sha256 "0b54874826a3908744c78c803da9d8aa8b9c718bfa0f96916e5495860230618b"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.4-linux-arm64"
      sha256 "5aa0e411cf876a90925ac96dd8172879a25135c20e980cd4c938b2429887c961"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.4-linux-amd64"
      sha256 "64388093794bdb47bed7bbf16b829a5148b7c8910b36ef3c95440a61c44b56eb"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
