# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.3.9"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.9-darwin-arm64"
      sha256 "92a3335e4c74beb41b24f24141e91b8616b90e7db16c4ace8e41f2289e2cbb5c"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.9-darwin-amd64"
      sha256 "7fcf85bb70b2c198682c4bdae0de311625b0fafb32d3c518e9109a8684dd43ab"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.9-linux-arm64"
      sha256 "ccccb15a0d84492f8f82b695fdad14bf95ed2b0b7e6e326d45b7b71a40be778a"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.9-linux-amd64"
      sha256 "afc440482f208a0324a39db6b88a2bebf704c4ca25dd2a29cb4e41c73a2804f2"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
