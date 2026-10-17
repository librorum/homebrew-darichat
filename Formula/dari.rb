# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.3-darwin-arm64"
      sha256 "e9b9e6fecf9ada184d890d9d0b376348b43f54ecbd9c2f062497343bf3a747dd"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.3-darwin-amd64"
      sha256 "c5784222317bf61bbb9fe8bc1a446322ff549c4aefc6d3edc0a5d7a988ba3b21"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.3-linux-arm64"
      sha256 "1e645f52e6659e4e1f36027ae6569ec5960f7baabf98769aa80741d8d80f2c82"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.3-linux-amd64"
      sha256 "265d99e6f302dabdb929b6f4a188dde3b3c39955b430240221c2592ab87fb550"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
