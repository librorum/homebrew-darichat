# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.1-darwin-arm64"
      sha256 "e731501aac889ec696a05380da7ceade34ac63decf463ef34a64e1d43f91f016"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.1-darwin-amd64"
      sha256 "ca3bda0648b522bf85270bfa1c84d7207e4a9af753d7105925e687e0597c23a2"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.1-linux-arm64"
      sha256 "4251705a748af56c3960739d0dbde78e613502eb54421084a71e34cb8a8affa4"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.1-linux-amd64"
      sha256 "6e21f4b3d06901086255d88f0751781d995654aa79c39911b22aeccf2dae0258"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
