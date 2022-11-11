load("deps.bzl", "deps")
deps()

local_repository(
    name = "rules_hdl",
    path = "bazel_rules_hdl",
)

load("@rules_hdl//dependency_support:dependency_support.bzl", rules_hdl_dependency_support = "dependency_support")
rules_hdl_dependency_support()

load("@rules_hdl//:init.bzl", rules_hdl_init = "init")
rules_hdl_init()
