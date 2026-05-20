class Deep < Formula
  desc "DeepCanvas CLI — task and document context for coding agents"
  homepage "https://deepcanvas.studio"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/deep-canvas/deepcanvas-cli/releases/download/v#{version}/deep-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "acb64ed6b846ef3d9666c5511f78540f541b2c2fa84276fa132a5f924c9ea2a2"
    end
  end

  def install
    bin.install "deep"
  end

  test do
    assert_match "deep #{version}", shell_output("#{bin}/deep --version")
  end
end
