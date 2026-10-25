# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.3.0/ssl-darwin-arm64"
      sha256 "dc11c0f06e93d34180c58c2fd843951b7c7882842fcf43c5474541eb2e628be2"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.3.0/ssl-darwin-x64"
      sha256 "6e649cd148198b62afb4c485c294096c457f7fe176958d930ead2d0ba4fbcb0e"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.3.0/ssl-linux-arm64"
      sha256 "c2271e51416877bda6b845fd39dbd01a1dc9b6eeef88bfef0a51d720c7d84845"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.3.0/ssl-linux-x64"
      sha256 "53be1c8cc0ffcdce1cdc1806392f2f22c895df8cae694a312d020cd3fa7a5789"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
