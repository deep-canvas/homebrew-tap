class Deep < Formula
  desc "DeepCanvas CLI — task and document context for coding agents"
  homepage "https://deepcanvas.studio"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/deep-canvas/deepcanvas-cli/releases/download/v#{version}/deep-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "eecc2d6973d3714d487f95a69a4d9a25bcde246729bb8dec7b871c00748b0e90"
    end
  end

  def install
    bin.install "deep"
  end

  test do
    assert_match "deep #{version}", shell_output("#{bin}/deep --version")
  end
end
