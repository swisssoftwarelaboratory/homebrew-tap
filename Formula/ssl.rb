# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.2.0/ssl-darwin-arm64"
      sha256 "2c6c5fd29ef8dfdf6552434d66b4e4f2dac9d157c544e0b02573072fdce55bf3"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.2.0/ssl-darwin-x64"
      sha256 "7cd86a20b81a0de1bfa53326cf6575f7816d4bab58a1596beaceb7a61baa2377"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.2.0/ssl-linux-arm64"
      sha256 "bea5fc3b90e00e57767dee44ee0aaffdecffafc3282552b90bf1a5f5858f14cc"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.2.0/ssl-linux-x64"
      sha256 "f9dc0e34f33a96019be5e8567c2bea5cf5a5da3f047ed467fac88631e11604d5"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
