# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.5.2"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.2-darwin-arm64"
      sha256 "e9ec74daf11a9f9448c34e31b59e49a5837bfaa3d56b84a0eaf55094e480a658"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.2-darwin-amd64"
      sha256 "06c6458350b57951130d388f5bd8b90e91560ed3cc22f74cf310d02931f6e29f"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.5.2-linux-arm64"
      sha256 "e275a3a3fd85ca410f579fb76087bac21b152a42281ddf7444de98e469606072"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.5.2-linux-amd64"
      sha256 "90e75dbdaf7a60b773d50cb9dd7e8f40653d993325f9eb18853b808b9e399c14"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
