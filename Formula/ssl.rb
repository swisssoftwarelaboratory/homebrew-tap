# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.5.0/ssl-darwin-arm64"
      sha256 "59a1bae764b07cc677ce87fca02c53a8ba0cf3080ffb8646eac22398056ad73b"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.5.0/ssl-darwin-x64"
      sha256 "ac5b16765eb338b8000d69ea67554b468181e2237c2ac9bcef02b2e1b65042e7"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.5.0/ssl-linux-arm64"
      sha256 "3a8ed9c961252941b373f221b5c73c01177d4f571ada6e5d4f54052020836363"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.5.0/ssl-linux-x64"
      sha256 "cd8471db9e2dcf44235932f7373a9de0269ec2563da04f684b264bb3d0515256"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
