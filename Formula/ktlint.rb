class Ktlint < Formula
  desc "Kotlin linter with built-in formatter"
  homepage "https://ktlint.github.io/"
  url "https://github.com/shyiko/ktlint/releases/download/0.9.2/ktlint"
  sha256 "335e2b5144d73f40311ba7c1d929ae3ebb0e42462cf458ad31ff4f679e66e59a"

  def install
    chmod 755, "ktlint"
  end

  test do
    (testpath/"test.kt").write("package test\n\n"\
      "fun main(args : Array<String>) {\n"\
      "    println(\"Hello, world!\")\n}\n")
    system "#{bin}/ktlint", "test.kt"
  end
end
