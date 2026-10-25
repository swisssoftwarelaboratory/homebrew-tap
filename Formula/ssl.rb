# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.2/ssl-darwin-arm64"
      sha256 "a8463d3498890c2a75cb10501e08fcca6112651a5b6871663237894db7c32de5"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.2/ssl-darwin-x64"
      sha256 "9e04d7c759cbdd5951d7a5d3c4fca0d50b5a9d97a75a28522d647a3a3905ff0e"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.2/ssl-linux-arm64"
      sha256 "0543b97e20181a2aec8ec966eed07c584817f224a6192b2bac6e1f2c3a9c6b34"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.2/ssl-linux-x64"
      sha256 "0bcf8bf78538ab3d7329739af7ac37692a1075288f22c4b6834e7af86f2f68c7"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
