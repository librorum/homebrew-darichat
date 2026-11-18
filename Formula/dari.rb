# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.0-darwin-arm64"
      sha256 "d1fd6fba31d340b0eb38ebe26c68f30b8dbc8c8e060d9ed363508cee57a06157"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.0-darwin-amd64"
      sha256 "a28059e275578c5efb713c322f31840a1f88b7ebb5efc08a446f76e786520a2d"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.0-linux-arm64"
      sha256 "013f515282ee8b3f674a382f99e402d0db0d2a90ceafc9edb1f19e64871d4441"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.0-linux-amd64"
      sha256 "24e0cb916b7f3b0f76dbd713ed908461bb272efdad9ff11304e2eef0950a26fa"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
