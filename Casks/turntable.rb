# Rendered by render.py into Casks/turntable.rb in khanhphxm/homebrew-tap.
cask "turntable" do
  version "0.1.0"
  sha256 "6346c964f6d26c698740e9f4d77c2865e99dc2b57a7027794eb712acb7b088ec"

  url "https://github.com/khanhphxm/turntable/releases/download/v#{version}/turntable-#{version}-macos-universal.zip"
  name "Turntable"
  desc "Lightweight native Spotify player"
  homepage "https://github.com/khanhphxm/turntable"

  depends_on macos: ">= :monterey"

  app "Turntable.app"
end
