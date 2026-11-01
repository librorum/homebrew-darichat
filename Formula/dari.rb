# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.1-darwin-arm64"
      sha256 "613dc25034f85c568550dfaa93be4ddb2542a205ed4ee70b542593a7fd3a3a52"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.1-darwin-amd64"
      sha256 "3159123f19d09af2522ae5277eeb1eef746a608c85458bb2be6ebf2f5587dfc9"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.1-linux-arm64"
      sha256 "8a0f75e7e48c1a2e33bcce74f5786c88b96b142b93b986c69a7040d4de4b759c"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.1-linux-amd64"
      sha256 "051da565d8803a042edbd264f2df709231b90c1da8ba98f1189d1cb9af739b64"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
