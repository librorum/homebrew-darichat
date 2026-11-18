# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.6.3"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.3-darwin-arm64"
      sha256 "821568ab493cc72ba15890090393baf07321428526234688b6db7300a304bc88"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.3-darwin-amd64"
      sha256 "524b1ab0c096d0cf3d562b48992edafeb4943bf32dcfaed5f49d5ef69e25763f"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.3-linux-arm64"
      sha256 "6a5d455321ebde81e7c4c13492ec3e8777cbfb442eadb686dd8be1fed3083285"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.3-linux-amd64"
      sha256 "299bf494c8dd694e01bb13a692032cacb216e4f38fb45ab535548abd21e919dc"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
