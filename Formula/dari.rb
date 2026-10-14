# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.2-darwin-arm64"
      sha256 "a4442592743c181128101a7bdb48de93bd2808a31da83ee9c142abb820b22708"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.2-darwin-amd64"
      sha256 "5b03b4918882340e591f2324fd1ce56c902bff81c43595f29ef563559ab0b387"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.2-linux-arm64"
      sha256 "29103234eda348fc2cb005597ccc9af7e372dd0ad2476cec5651e903adbb88f7"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.2-linux-amd64"
      sha256 "8e2d099287c1fc6a1d91faae4397e8768436d7432f94b80dfe26187db29523c6"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
