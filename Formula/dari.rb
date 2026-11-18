# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.6.4"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.4-darwin-arm64"
      sha256 "168b4999ba103d18b0af8c806c6323919e0c24d5b1e54aad628e3081e8b731b0"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.4-darwin-amd64"
      sha256 "88d0d5b08dac536991ca82e96092ff2a9c1b8087602d421fdead26fda65c4b31"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.4-linux-arm64"
      sha256 "21fc18e98bd620f20cd5a265542d30fb64dbcb58cb65019925ca495747b18b6c"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.4-linux-amd64"
      sha256 "9e9db4db9bd70cba05c938a8a8575e4c900c1c1fe749e184258e6cf64bfb04db"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
