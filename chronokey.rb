class Chronokey < Formula
  desc "CLI tool for managing and generating TOTP codes for two-factor authentication"
  homepage "https://github.com/yashu183/chronokey"
  url "https://registry.npmjs.org/chronokey/-/chronokey-1.0.1.tgz"
  sha256 "4d29098b0124089e52365dd8a2994cfc9a3d93501a2ecf5a5c1f75865319cfbc"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/chronokey --version")
  end
end
