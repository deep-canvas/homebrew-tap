class Deep < Formula
  desc "DeepCanvas CLI — task and document context for coding agents"
  homepage "https://deepcanvas.studio"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/deep-canvas/deepcanvas-cli/releases/download/v#{version}/deep-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1ed4a94217ae939ccae4adf850e0f95c2aecefe9de4499c284a3b2ea22862e21"
    end
  end

  def install
    bin.install "deep"
  end

  test do
    assert_match "deep #{version}", shell_output("#{bin}/deep --version")
  end
end
