# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.6.9"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.9-darwin-arm64"
      sha256 "635594a024296ad3939e3d27b06360d198875c712ef9ca31c47bbe089b6a8a52"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.9-darwin-amd64"
      sha256 "abfd61721220f0342ea7692c658df1d343aba388d468fb2f7292fc166cfb20a2"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.6.9-linux-arm64"
      sha256 "d058e3c38b9df2955e9a4a5539d09b7f9dd25eb4b3d4c185e5f222e0c1e6412c"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.6.9-linux-amd64"
      sha256 "bbc12637dfb25f4fbeb4e64f7a7bb5504e42d11ce9a08dd0ae6cb4c9a7c06d8e"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
