# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.4.4"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.4-darwin-arm64"
      sha256 "b23da186b34fa4fc266c75ab7fa526a3195ac29e072f34663921cc90992700fa"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.4-darwin-amd64"
      sha256 "dac78873f37f5c13d1f048d1b3ce6347feb042a871608af536409683e47237de"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.4-linux-arm64"
      sha256 "4aad2a3140bf6866c38765888599f2b4d4c3c219295a9c96c7bdfe184c0dd25e"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.4-linux-amd64"
      sha256 "b8e4921a86a22b323ab21e504c5e188cdcdaf33c7f8f3bd1091afbd78098f4d0"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
