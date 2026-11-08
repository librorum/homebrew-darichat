# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.5.6"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.6-darwin-arm64"
      sha256 "a0e83f0c6cf4bf232c1f7921487f943f75105f42b8e66cf2d2561e59cc21b5cb"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.6-darwin-amd64"
      sha256 "2a81a65248c7fe3e4ee4ad4932d459f572b857d5f0e151a326229c11fc3f9758"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.6-linux-arm64"
      sha256 "0f48f89d9004af5359b5acd2f7030f1e281565654db1c5966238a5b7e401d1d5"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.6-linux-amd64"
      sha256 "9a61cbb5e6b760c263e7d0b5cbb5e667a4064e56f451c1eb2a1ee313397383a0"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
