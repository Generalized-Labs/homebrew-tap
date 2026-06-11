# typed: false
# frozen_string_literal: true

class Ironrun < Formula
  desc "Agent-safe sealed command execution — secrets injected below AI context windows"
  homepage "https://github.com/generalized-labs/ironrun"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/generalized-labs/ironrun/releases/download/v0.2.0/ironrun_Darwin_arm64.tar.gz"
      sha256 "0fe75b9549f4bea917dfee557d1dbf71a998db86c1de8182da56d67b127def0e"
    end
    on_intel do
      url "https://github.com/generalized-labs/ironrun/releases/download/v0.2.0/ironrun_Darwin_x86_64.tar.gz"
      sha256 "13a491a4296525943b2c82856b141882463566fe0d483742f36e978829468c13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/generalized-labs/ironrun/releases/download/v0.2.0/ironrun_Linux_arm64.tar.gz"
      sha256 "398b44e0652ff4baa36fc6f48fa78c535d3f0beda568469dd792d7e69d1dfb04"
    end
    on_intel do
      url "https://github.com/generalized-labs/ironrun/releases/download/v0.2.0/ironrun_Linux_x86_64.tar.gz"
      sha256 "99cc889e40323ac18d0bf8155a562ee33fb4f96c94e9cf3eecd88f5f45ec500a"
    end
  end

  def install
    bin.install "ironrun"
  end

  test do
    system "#{bin}/ironrun", "version"
  end
end
