# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.4.1/ssl-darwin-arm64"
      sha256 "b69a085ccb2351ee10de15f8675a471dddaa17630f1691bb859082b332f2a6b1"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.4.1/ssl-darwin-x64"
      sha256 "dd296a1e83ac1fb907f7ae6e0215c171c683d43ad2f6d1adffdd43e31ed30516"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.4.1/ssl-linux-arm64"
      sha256 "a7b72e1e9160aba7e0cea9dcf92dd2b6468060d0e10f44ec5cd5274ebb5d16af"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.4.1/ssl-linux-x64"
      sha256 "cd57668aac1783ee672f9e5eb459f787c8ab969208b721be8d18794a276138ca"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
