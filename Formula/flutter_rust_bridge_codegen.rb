class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.74.0.tar.gz"
  sha256 "36b457261893f8e12db0e7b7b8ae27deb7be80366c3c8df0d0af1877544fd764"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.74.0"
    sha256 cellar: :any_skip_relocation, monterey: "e78de50dd30bca979db872ace0d2132d6edf0cc8dbcbd363767bcec29fc27d6a"
    sha256 cellar: :any_skip_relocation, big_sur:  "fe431fabaca52a63c00d0118617a25ebcd37e712db2b07069023118a86c6b91f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
