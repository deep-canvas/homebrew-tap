class Deep < Formula
  desc "DeepCanvas CLI — task and document context for coding agents"
  homepage "https://deepcanvas.studio"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/deep-canvas/deepcanvas-cli/releases/download/v#{version}/deep-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "22df71dca170e07c909614b8623532c0bb1b21c388ba0b817e2f529944713b0f"
    end
  end

  def install
    bin.install "deep"
  end

  test do
    assert_match "deep #{version}", shell_output("#{bin}/deep --version")
  end
end
