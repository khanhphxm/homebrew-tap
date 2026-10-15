# Rendered by render.py into Casks/turntable.rb in khanhphxm/homebrew-tap.
cask "turntable" do
  version "0.1.1"
  sha256 "76582db2e615da95d95c927b9fc47a789e8ac007429d9826e13704f227e7291d"

  url "https://github.com/khanhphxm/turntable/releases/download/v#{version}/turntable-#{version}-macos-universal.zip"
  name "Turntable"
  desc "Lightweight native Spotify player"
  homepage "https://github.com/khanhphxm/turntable"

  depends_on macos: :monterey

  app "Turntable.app"
end
