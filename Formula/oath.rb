class Oath < Formula
  desc "Security-first replacement for npm, npx, and bun -- reads dependencies before they run"
  homepage "https://github.com/Generalized-Labs/oath"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Generalized-Labs/oath/releases/download/v0.1.4/oath-darwin-arm64"
      sha256 "fa59c57453b57909d89c95c52d7c42bd376a9b5f9bd85e3461bd623321642b80"
    end
    on_intel do
      url "https://github.com/Generalized-Labs/oath/releases/download/v0.1.4/oath-darwin-x64"
      sha256 "9d58e3afc1e06930bc4609b2e39c3e19ddebc7b69d9bdf50505d55a81ea3b825"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Generalized-Labs/oath/releases/download/v0.1.4/oath-linux-arm64"
      sha256 "8a5c0358d8075f8951d852a68e5d291876579277653615f92fafd513c99ce00d"
    end
    on_intel do
      url "https://github.com/Generalized-Labs/oath/releases/download/v0.1.4/oath-linux-x64"
      sha256 "6b9a0cebf5c78c7beef6d45083f257c646ea513648fd3109893a16c8f715f3a3"
    end
  end

  def install
    bin.install Dir["oath-*"].first => "oath"
  end

  test do
    assert_match "oath", shell_output("#{bin}/oath --version")
  end
end
