# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.8.0/ssl-darwin-arm64"
      sha256 "28fd385097b963395da80c5a32134715e1df62abe98373c3e7f0bfd974144623"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.8.0/ssl-darwin-x64"
      sha256 "775de2c5fcb016eee483b724c13155cd585c61545cc43c67acdbdf0654f544c5"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.8.0/ssl-linux-arm64"
      sha256 "9aaa85dce7b01a4ab13fe79756f560e21cdddd3189dff472228ef86a03b0f504"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.8.0/ssl-linux-x64"
      sha256 "1aa6160c6e420d30b1e89e7927fc34eaa0268b7689833e93bfe82ec524c279de"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
