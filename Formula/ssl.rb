# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.1/ssl-darwin-arm64"
      sha256 "f31f9d4ebe999ccfff350988f8c8e6551a8db7199585e2ed597cd668b43c2b02"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.1/ssl-darwin-x64"
      sha256 "7296c8265e54602ea40a3409f58270d4b7a98594f12765eaa99f75af1d020be9"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.1/ssl-linux-arm64"
      sha256 "9f67059a902f7a373444690f83bc4baa623df783be70a0c24eeeed32c45605ad"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.1/ssl-linux-x64"
      sha256 "edd614bfb47e1dfbbfb87d2e8f3426d6630b6be92afb8abd088711d04c259948"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
