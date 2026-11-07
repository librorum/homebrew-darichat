# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.5.5"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.5-darwin-arm64"
      sha256 "5585ba91b26f8ef98b3e751f555b26b33a532b07f1d23feeaaabdeaa39488d6e"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.5-darwin-amd64"
      sha256 "304e3c89edfee2c43d494af5af49d93b51c284e5ec7b5c15d7069757b8ddec2f"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.5-linux-arm64"
      sha256 "d26f98814267fb2529681ea7f201c0a218fa6566bf09f9d8d9b12c8f809491ec"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.5-linux-amd64"
      sha256 "10431fea8ae2838981d09cad48566ab89a3ff5fdeafd364aa3c85046b07fcb29"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
