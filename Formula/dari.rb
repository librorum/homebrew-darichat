# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.3.7"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.7-darwin-arm64"
      sha256 "bbeb2a49f007a69fab1a3a2bccb5f0b3921c5776d64ba1bf4e911874b838819d"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.7-darwin-amd64"
      sha256 "2b315385a123ca3c03a8b4f8bf01175808195da0f72c46aff7a73fcad9a557b4"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.3.7-linux-arm64"
      sha256 "a5db889912027259e6962fb2d5b6640ee6fcab9212320f1e081d20e83559d614"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.3.7-linux-amd64"
      sha256 "a384cb2294f8221511f2c3c938ebba1523fecf83fdb7d8c84147728e6d5fc81c"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
