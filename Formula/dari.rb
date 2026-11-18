# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.6.5"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.5-darwin-arm64"
      sha256 "1a4f831169fb57f5a4e3719805a83af49e0c7f54187b437bdc3dd01fc2513ced"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.5-darwin-amd64"
      sha256 "7f9421e9a35570b336a0f3efac8e76fe0323a17bc79d26b0a8984437e04dd014"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.5-linux-arm64"
      sha256 "b4a0da96b3f546d136c5bf00c2b2638ffa6cc7f9a40398089fae97b01a94b6c4"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.5-linux-amd64"
      sha256 "51221eb2e07a20c54c3c3e7e72a3dd8803037600a1b2673ea896fb65bcf12e58"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
