# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.9.0/ssl-darwin-arm64"
      sha256 "dcd4094cd7d868bee0cfb477eac741f15267096b2c0765e43eb6f227992ab73f"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.9.0/ssl-darwin-x64"
      sha256 "416a6b98a119f7e5113faf45584e29f6844005d37a68775f90438998d01be954"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.9.0/ssl-linux-arm64"
      sha256 "e02a7041656a0525be2bda83ae0e24bf51a0037fd1e0cfb2a36a999b13aa308c"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.9.0/ssl-linux-x64"
      sha256 "87027b04eb41516d5d0ecf6516f491a6d28cb59083a92c1e125ffbb89eae4614"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
