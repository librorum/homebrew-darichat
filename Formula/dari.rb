# 다리챗 저장소의 `pnpm run release:cli` 가 version·url·sha256 을 갱신한다. 손으로 고치지 마라.
class Dari < Formula
  desc "CLI for DariChat and DariWiki"
  homepage "https://darichat.com/"
  version "0.4.5"

  on_macos do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.5-darwin-arm64"
      sha256 "a30a50faa512d83162e5e0c7228f239237b7377f71d46199220a8492c2eab524"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.5-darwin-amd64"
      sha256 "91d38652a9026603044cdc3769e6025b597d1c14aa017406d6a85f8d59a46c00"
    end
  end

  on_linux do
    on_arm do
      url "https://darichat.com/api/file/download/dari-0.4.5-linux-arm64"
      sha256 "f3ebb879cdf0c09429ddb210b599b0dffd4f28a3a09796d3d17cdc24410a8a8a"
    end
    on_intel do
      url "https://darichat.com/api/file/download/dari-0.4.5-linux-amd64"
      sha256 "d652a2925ddc96a8516c2a6231bdc65d6daa3db2d42ac57e46ff0bb2d548de97"
    end
  end

  def install
    bin.install Dir["dari-*"].first => "dari"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dari version")
  end
end
