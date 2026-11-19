# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.7.2"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.2-darwin-arm64"
      sha256 "ef3f7412a1176050d6755d67a4d9288565a2b0e70d53f71516712c372c1cf4f8"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.2-darwin-amd64"
      sha256 "7ffec9a569cf5ad4fc56991fa154f55e32c1881cb18c39c075504caa8e36b32b"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.2-linux-arm64"
      sha256 "e37daf44100ade54be28809832c1e8d423e8a58a494231c111eb621c2b1dcc00"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.2-linux-amd64"
      sha256 "32d7212deb2fe62cb2354551a59c40c7b11b482c2cd754c77c0cae6689f53e1e"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
