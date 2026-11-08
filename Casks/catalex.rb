cask "catalex" do
  version "0.2.1"
  sha256 "c2e8cdee3e40e9590c876af2eaa8a0d56ebd1e93e255eebaf98f2f6324d3a26d"

  url "https://github.com/Catalex-app/Catalex/releases/download/v#{version}/Catalex-#{version}-arm64.dmg",
      verified: "github.com/Catalex-app/Catalex/"
  name "Catalex"
  desc "Local-first LaTeX writing workspace"
  homepage "https://catalex-app.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Catalex.app"
end
