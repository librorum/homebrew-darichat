# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.0-darwin-arm64"
      sha256 "5b1bf9a8f3194432ab74fef75f5b65748b661803482e27705df3f00b2a4dddbd"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.0-darwin-amd64"
      sha256 "01424bbd5ef226ae7d1a9c6ddfaa52196bfcb8346b524bc37f1728fc333010e9"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.0-linux-arm64"
      sha256 "d6a6f317b1dac6d5fbe3006cc3e5038cba30091bd7bb9561b9c817620a7cf83f"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.0-linux-amd64"
      sha256 "7e37c7075de9f83a1f18cb0baf2a2423e6345a81fa0d810dd56f19fca09fc38b"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
