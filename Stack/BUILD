load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library", "swift_binary")

load("//config:configs.bzl", 
    "swift_library_compiler_flags")

swift_library(
    name = "Stack",
    srcs = [
        "Stack.swift"
    ],
    copts = swift_library_compiler_flags(),
)

swift_binary(
    name = "StackPlayground",
    srcs = [
        "Stack.playground/Contents.swift",
    ],
    copts = swift_library_compiler_flags(),
)
