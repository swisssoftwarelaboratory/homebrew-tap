# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.4.0/ssl-darwin-arm64"
      sha256 "87931ce36762bc9c39dcfb18973d5844f364307a5d512f19c1e5862cc8ba8c78"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.4.0/ssl-darwin-x64"
      sha256 "3e137501efdfa10e9a4f85e07a5a6bcb73ae3bed2c6d6be25ed869a7d70c5049"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.4.0/ssl-linux-arm64"
      sha256 "dfd9204e6f8c0882652e25448012776de50e50b8fd9e1d9bdfceafb6769ceb6b"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.4.0/ssl-linux-x64"
      sha256 "28e5fe09aa682e3561572e0c989b20a4631baa8c687f5aa6b924c5f179d8ae0e"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
