# Rendered by render.py into Casks/turntable.rb in khanhphxm/homebrew-tap.
cask "turntable" do
  version "0.1.2"
  sha256 "803ff04540f34c7d0c304b9037c861d73badbf811924074ab871df2a8222d2c8"

  url "https://github.com/khanhphxm/turntable/releases/download/v#{version}/turntable-#{version}-macos-universal.zip"
  name "Turntable"
  desc "Lightweight native Spotify player"
  homepage "https://github.com/khanhphxm/turntable"

  depends_on macos: :monterey

  app "Turntable.app"
end
