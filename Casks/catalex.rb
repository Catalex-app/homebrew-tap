cask "catalex" do
  version "0.1.1"
  sha256 "c0fbffc88aba87c7f73c8eca6e078cc70c0b8011c64b90a934efd93dc464c066"

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
