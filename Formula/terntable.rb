class Terntable < Formula
  desc "Spotify in a Tern pane"
  homepage "https://github.com/khanhphxm/terntable"
  url "https://github.com/khanhphxm/terntable/releases/download/v0.1.0/terntable-0.1.0-macos-arm64.tar.gz"
  sha256 "0ed1a538d0075e59daa4758b5847421a3fb7d6258268b35b777b3acc1af5f898"
  version "0.1.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "terntable"
    (share/"terntable").install "plugin"
  end

  def caveats
    <<~EOS
      Link the Tern plugin (palette commands, global keys, status line):
        tern plugin link #{opt_share}/terntable/plugin
      Then open it with "terntable: Open" in Tern.
    EOS
  end

  test do
    assert_match "terntable #{version}", shell_output("#{bin}/terntable --version")
  end
end
