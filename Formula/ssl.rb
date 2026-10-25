# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.0/ssl-darwin-arm64"
      sha256 "267ce8252144ea8fbd4a8bdfd471d254729a66f226734867b35fab67e56bb79c"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.0/ssl-darwin-x64"
      sha256 "7e1bbcd49d388bab1ef6850df8a4f7a2b841aace2609d950e4c2285d2c78d37f"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.0/ssl-linux-arm64"
      sha256 "2c5238f0f584d5b4532e83a559f68a4018a4f51161f353a361129712643f7a9e"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.1.0/ssl-linux-x64"
      sha256 "d203114dde6b2bbb89dc703ee35790c24e2129a83b1803318183dd374c69a723"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
