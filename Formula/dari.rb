# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.7.7"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.7-darwin-arm64"
      sha256 "57e197b08c2c59045d0dde7722daf81101100958f13b9400d15f6e597763b9d6"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.7-darwin-amd64"
      sha256 "6a1a7c570f990642d7b6d935925ff580eaaee39c9cad0090563898f6310f2ffc"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.7.7-linux-arm64"
      sha256 "4dd96ff1709ee41f45c9f1b207bbd271c1d477be75648506653b52129157eef8"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.7.7-linux-amd64"
      sha256 "79a8a218e6b4a724a38d92edbf73ea128852fd326e39b7e621113e484a1ed581"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
