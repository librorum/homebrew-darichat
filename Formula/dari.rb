# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.7.5"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.5-darwin-arm64"
      sha256 "e501b1d08592fb418231df46c0175999be6121daa4a6e31c0ce93172c80ff711"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.5-darwin-amd64"
      sha256 "2558d94b7ea0cc01ccd2123bb35e05f15c27bcc59c7dcd1217c3f8ad45b5fb4a"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.5-linux-arm64"
      sha256 "be0772a6fd07084def951b553638cfa582dc69a9c4690d8d90404f2df9f61676"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.5-linux-amd64"
      sha256 "032fe8feb25b87176891329d7751e9c1b917d9f49fe27bad1bf859927a2ff2f2"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
