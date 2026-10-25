# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.4.3"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.3-darwin-arm64"
      sha256 "3d238685054c8eb07e2b4a1e431b6acc92954cf7e7569d4f084c65dce123d994"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.3-darwin-amd64"
      sha256 "6d218bf5eb9174368e2699ade0eb37924fac3b13c3890f36e3e710ebfa2f4e22"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.3-linux-arm64"
      sha256 "381e28b8dfd1c5ba45bac46226c59df889341b70ff70dd17cbac4b19ac0df69f"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.3-linux-amd64"
      sha256 "bf7119f0dd0fa462c6b747ffc73a9973df748c2ceb3ad8b939a7800f81e765c4"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
