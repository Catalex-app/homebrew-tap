cask "catalex" do
  version "0.3.0"
  sha256 "8bcbd661db41b8113538c11e647e16beaeed3f79eacc18a3a4c9ec1e13ce3430"

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
