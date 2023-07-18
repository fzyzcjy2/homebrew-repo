class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.79.0.tar.gz"
  sha256 "363c5f72f5d60f8d358fc72baf738c1df1064c34979f8ea42fe3a756e8968aca"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.79.0"
    sha256 cellar: :any_skip_relocation, monterey: "0bff21084f265376d1c9f7bbfac753b96c1a50825d89cb56ccdd2a7bd78b9f0e"
    sha256 cellar: :any_skip_relocation, big_sur:  "a3a42ecf6db239111a5e8c55435bfcc6158b0c8b39a03d91eb81645bbcd078c4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
