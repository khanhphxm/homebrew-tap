# Rendered by render.py into Formula/turntable.rb in khanhphxm/homebrew-tap.
class Turntable < Formula
  desc "Lightweight native Spotify player"
  homepage "https://github.com/khanhphxm/turntable"
  version "0.1.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/khanhphxm/turntable/releases/download/v#{version}/turntable-#{version}-linux-x86_64.tar.gz"
      sha256 "87f52ebe004372a67ad6f578eafe6980d4aae6a08d0e3e393cf325f178a64ea8"
    end
    on_arm do
      url "https://github.com/khanhphxm/turntable/releases/download/v#{version}/turntable-#{version}-linux-aarch64.tar.gz"
      sha256 "fca6938a1f76629676a5886f47ac1358fe5da9c83c54ceb44d332470ccb14b66"
    end
  end

  depends_on :linux
  depends_on "alsa-lib"
  depends_on "dbus"
  depends_on "fontconfig"
  depends_on "freetype"
  depends_on "libx11"
  depends_on "libxcb"
  depends_on "libxcursor"
  depends_on "libxfixes"
  depends_on "libxi"
  depends_on "libxinerama"
  depends_on "libxkbcommon"
  depends_on "libxrandr"
  depends_on "libxrender"
  depends_on "mesa"
  depends_on "openssl@3"
  depends_on "pipewire"
  depends_on "vulkan-loader"
  depends_on "wayland"

  def install
    bin.install "bin/turntable"
    share.install "share/applications", "share/icons"
    pkgshare.install "INSTALL.md", "LICENSE"
  end

  def caveats
    <<~EOS
      Requires glibc 2.39+, a Wayland/X11 graphical session, and a working Vulkan
      GPU driver (install it with your distribution's package manager).
      This is a desktop app; run turntable from your graphical session.
      To expose it in your desktop menu, copy #{share}/applications/turntable.desktop
      and #{share}/icons/hicolor into ~/.local/share/applications and
      ~/.local/share/icons respectively. Ensure #{HOMEBREW_PREFIX}/bin is on PATH.
    EOS
  end

  test do
    assert_path_exists bin/"turntable"
    assert_path_exists share/"applications/turntable.desktop"
    assert_path_exists share/"icons/hicolor/256x256/apps/turntable.png"
  end
end
