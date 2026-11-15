# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.5.9"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.9-darwin-arm64"
      sha256 "f7c79d60b5c3eaca00bcd4d7f0d497c52522cc7a2c2b0381784f43a45d9fab9f"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.9-darwin-amd64"
      sha256 "97c190bed5e4d4a42971ef724e19faa486a9de1baa99f17001ab6327b7c3ce3d"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.9-linux-arm64"
      sha256 "ed5606764ff49fe1af323db20fcf472d36f7671b7c9673f8cb6d487cc0f82a5c"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.9-linux-amd64"
      sha256 "7d99e85ffabb4af38a913228cfd4fe41fc4bad27bbf8ce335d0af7578e080fe0"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
