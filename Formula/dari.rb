# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.7.6"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.6-darwin-arm64"
      sha256 "d978464e66117f8299dac62471162968fa2b1f3d18a06cec0e83bca74aa7407b"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.6-darwin-amd64"
      sha256 "84cfe43d38e3ee5200c998049bca20693d548c0a309098310b19879d7124ec95"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.6-linux-arm64"
      sha256 "3759ba9f5fccc0edabd0349af7260087911a7ffc20cd4f8ca28ac8d814ac7d1c"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.6-linux-amd64"
      sha256 "07c9eccd7c4a923d5931a765f98fa88299522ca8993b6cc45c0d1953dc33a93d"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
