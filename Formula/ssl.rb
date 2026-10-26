# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.6.0/ssl-darwin-arm64"
      sha256 "d53e8cfb138892d29528e77c977acc0ddcb5d454e270f314e427e49de1966cb8"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.6.0/ssl-darwin-x64"
      sha256 "e9be72a92ca745a8e0620a62274ca79f60c25d582f497b01788eea1cb780c3f0"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.6.0/ssl-linux-arm64"
      sha256 "a06371a441bfc08ff536368d69f2f552e4e7897cbb0fe20157fad887673f9427"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.6.0/ssl-linux-x64"
      sha256 "976c20852416497c2716437d3597171a3126f10453644cf4f57216b2a18f58c4"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
