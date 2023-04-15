class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.75.0.tar.gz"
  sha256 "6efb71ac8086699da74dad6736c32ddb20db5dcabe167c49a8c3a650675eb84b"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.75.0"
    sha256 cellar: :any_skip_relocation, monterey: "539cff534340e5083fad5049e11d6ded31daf75d5fc1a0e6606b3a0440cef9eb"
    sha256 cellar: :any_skip_relocation, big_sur:  "91bbd5c8ec78c39b2db82d750af5a5af56616e72b15b03e9c72b34ff965c4202"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
