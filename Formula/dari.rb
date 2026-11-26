# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.8.1"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.8.1-darwin-arm64"
      sha256 "867814d49a45220ca3bccce687304e8f8f3793f4980cd8d2006ac7ee98198e90"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.8.1-darwin-amd64"
      sha256 "638b2c7c185c6d7f702360cc5dce20139ae611c76ece71537fa6bab0eda16c34"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.8.1-linux-arm64"
      sha256 "1dabdbd61a4ffe5ae8d57ee4284d1feb548e90788a825abddc1ccb774c5693f7"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.8.1-linux-amd64"
      sha256 "8d2a1dce05dfc3b2c8f34b67e519dd962ee2f432eee7e9cc8c2fef8995873fed"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
