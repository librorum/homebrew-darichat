# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.3.5"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.5-darwin-arm64"
      sha256 "872cfa3c2c419c0433a1907261d5e41deae6cf684ccafa5293f52a8036a10a20"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.5-darwin-amd64"
      sha256 "6e0b82c57541e2b8efb362b872388bb4ad2d01561a9f5ca1d27a972f1c117bc5"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.5-linux-arm64"
      sha256 "5fd732a57441a6b1448e18272c8c2f7e6faba680a6e7165cd9b1bf96055271cc"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.5-linux-amd64"
      sha256 "9d022656fa8fb914b100b6d7d3f3a1810cb02239572d3b2061393d42a3384db7"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
