# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.7.9"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.9-darwin-arm64"
      sha256 "0b653b8ab0d67d0ce1446073b1e19a5489f98508dca107b88e833381d4963515"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.9-darwin-amd64"
      sha256 "d97a799d2cc6e3b50a2b3c234f3c8911c11c901a3d8e5456605160db952db02d"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.9-linux-arm64"
      sha256 "9726a27ca879d4900a4a88bcdb5d6b9dd368b3e3dc34d1e8950eaa72ce5cc631"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.9-linux-amd64"
      sha256 "11b9936d255de3cf2be5f8167abaa729093fcfe2481c6e333f19dda3a7cc43a9"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
