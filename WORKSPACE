load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "a228a8e41fdc165a2c55924b728c466e0086f3e638a05d6da98aa6222cbb19c1",
    url = "https://github.com/bazelbuild/rules_swift/releases/download/0.16.1/rules_swift.0.16.1.tar.gz",
)

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()