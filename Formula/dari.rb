# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.1-darwin-arm64"
      sha256 "f9859a15b194495648704d2cbf294168d3b1cf4bf04067de106acc55b54f0d09"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.1-darwin-amd64"
      sha256 "e8926ceb75206b38f2395522883af7a21d250a7750c3e1277c9021a90bb72761"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.1-linux-arm64"
      sha256 "c7799d2db488dedf863a4a62a2cdfee89b35973f5b8575d5c8844ce3710e11df"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.1-linux-amd64"
      sha256 "245860ebff5c25103c88b3cffc2044c5117c467ec95637075d99ebcf2426ba2d"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
