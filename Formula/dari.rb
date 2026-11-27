# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.8.3"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.8.3-darwin-arm64"
      sha256 "005813e5c54b64176490740cd3bc54eeafa90a46141c35582afe8aa356385026"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.8.3-darwin-amd64"
      sha256 "82200864674be43c459fa92942ccc1b0c87096352285ccabccf873789fe07aef"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.8.3-linux-arm64"
      sha256 "423b3e7f7855c6e7c81b0dcd0fb930ff4555c3645b645820a77fbb51adcec158"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.8.3-linux-amd64"
      sha256 "fb658aa1cf053c4d8fd9e2387cba2e88af753e04084bd746c87ea75eaf4d80b3"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
