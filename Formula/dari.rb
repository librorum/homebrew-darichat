# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.5.7"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.7-darwin-arm64"
      sha256 "ab74285c2f721f77143444f2826b0716d87527156ce8fb4707e3603b99502841"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.7-darwin-amd64"
      sha256 "b29d8194261aaf4b4a31a6e45d15fc7c7fa8be9fcd9e09ceffae4b2c82fbe8e5"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.7-linux-arm64"
      sha256 "38131015c15973e84d223223f0a4568c8afc23fb67481cb174a1e60d513de56c"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.7-linux-amd64"
      sha256 "643bf06cbd9ccc5ed4a9d291785b602ad494b3b2ce7631951f8c3e73d97d684e"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
