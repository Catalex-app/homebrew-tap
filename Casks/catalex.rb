cask "catalex" do
  version "0.2.0"
  sha256 "a695a8987afe1385ab84f969d335790b1a3dbccece860d528b3e4f9b30320ede"

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
