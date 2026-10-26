# Written by `pnpm release:cli` in swisssoftwarelaboratory/tracker; changes here are overwritten.
class Ssl < Formula
  desc "SSL Tracker from the command line, for agents and people"
  homepage "https://tracker.swisssoftwarelaboratory.com"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.7.0/ssl-darwin-arm64"
      sha256 "4611f238035038290824f9b15bf5fc2e5caf88465fd107b242d20fe8aea5175b"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.7.0/ssl-darwin-x64"
      sha256 "33a5e45ce932be1ba7c55bce8ee26c568f25e7d058ec09f81aa146c54ff40fb5"
    end
  end

  on_linux do
    on_arm do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.7.0/ssl-linux-arm64"
      sha256 "a262a653ac55f9a2eae9295dcb9e4b1ad14e6d2320cffca75280a7a96b333274"
    end
    on_intel do
      url "https://tracker.swisssoftwarelaboratory.com/download/0.7.0/ssl-linux-x64"
      sha256 "643f401867f4e72a2ae67fa08b44da6ddd41889e6bb4fb4f864de1838e2d4c54"
    end
  end

  def install
    bin.install Dir["ssl-*"].first => "ssl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssl --version")
  end
end
