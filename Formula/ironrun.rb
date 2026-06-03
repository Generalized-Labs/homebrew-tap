# typed: false
# frozen_string_literal: true

class Ironrun < Formula
  desc "Agent-safe sealed command execution — secrets injected below AI context windows"
  homepage "https://github.com/generalized-labs/ironrun"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/generalized-labs/ironrun/releases/download/v0.1.0/ironrun_Darwin_arm64.tar.gz"
      sha256 "655e262e7ac1b99e66e0ce1196b3670c6429631c6e0aab5433c78d497c3f97a6"
    end
    on_intel do
      url "https://github.com/generalized-labs/ironrun/releases/download/v0.1.0/ironrun_Darwin_x86_64.tar.gz"
      sha256 "d00767308a151027576b6b19dc539792078347e5d014dcdef140255b1f1c4a3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/generalized-labs/ironrun/releases/download/v0.1.0/ironrun_Linux_arm64.tar.gz"
      sha256 "4f7221e80fd4b5ba595cc77fc1287ab4e72a66e5e825c495556f25e7af720f04"
    end
    on_intel do
      url "https://github.com/generalized-labs/ironrun/releases/download/v0.1.0/ironrun_Linux_x86_64.tar.gz"
      sha256 "a1de1048820f0d2c180552d2826c681f788f24fbef731d65b8ac4d7c88be8c28"
    end
  end

  def install
    bin.install "ironrun"
  end

  test do
    assert_match "ironrun v#{version}", shell_output("#{bin}/ironrun version")
  end
end
