# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.2-darwin-arm64"
      sha256 "9c44386590711a8d441ab4ebb2cc3e7e7908bf8a468ee43c05081a36ef211c15"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.2-darwin-amd64"
      sha256 "2e9ddec142f3dfb1b76149b6e7ddc0e90b6530e0ecd78ff98a8cf2953a2a1d24"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.2-linux-arm64"
      sha256 "d2f00cb3a7cc60794c86d9913c7b6916f15b0b3a7a02d164d759e2c5857418b6"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.2-linux-amd64"
      sha256 "c042a7f7309bfafe108f7c2228cc65a8f007a21d81c5657be92269723bc5bb14"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
