cask "catalex" do
  version "0.1.0"
  sha256 "879bdf43f76b147d4e53b1410778fd3ac7e0fb845156dd72d5c4f9abde2c71d2"

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
