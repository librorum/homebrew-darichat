# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.5.4"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.4-darwin-arm64"
      sha256 "1beff9249ebc1266d5d1e68a93e86385b3e5fb545414907eeaf5a74a8fe16eb7"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.4-darwin-amd64"
      sha256 "4833c88587cea02d8e0dbe00e2b7404942ec8099e6dfa1502b077c024d3d1005"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.4-linux-arm64"
      sha256 "1549b993acba09dfbe97a32e7fc3c4665236fb55d0833d28b0bb17bc577af627"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.4-linux-amd64"
      sha256 "0b6caf65266f9870f39faf28a13b38bb001b2c7b434e1de0bfc6e87df9aac25e"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
