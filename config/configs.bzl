load(
    "//config:constants.bzl", 
    "SWIFT_DEBUG_COMPILER_FLAGS",
    "SWIFT_RELEASE_COMPILER_FLAGS",
    )

# This function switches the compiler flags according to the configuration
def swift_library_compiler_flags():
    return select({
        "//config:develop" : SWIFT_DEBUG_COMPILER_FLAGS,
        "//config:production" : SWIFT_RELEASE_COMPILER_FLAGS,
        "//conditions:default": SWIFT_DEBUG_COMPILER_FLAGS,
    })

def mac_provisioning_profile():
    return select({
        "//config:adhoc":"//provisioning_profiles:release_adhoc.provisionprofile",
        "//config:production":"//provisioning_profiles:release_appstore.provisionprofile",
        "//config:develop":"//provisioning_profiles:dev.provisionprofile",
        "//conditions:default": "//provisioning_profiles:dev.provisionprofile",
    })

def ios_provisioning_profile():
    return select({
        "//config:adhoc":"//provisioning_profiles:release_adhoc.mobileprovision",
        "//config:production":"//provisioning_profiles:release_appstore.mobileprovision",
        "//config:develop":"//provisioning_profiles:dev.mobileprovision",
        "//conditions:default":"//provisioning_profiles:dev.mobileprovision",
    })

def ios_version():
    return select({
        "//config:ios13": "13.0",
        "//config:ios12": "12.0",
        "//conditions:default": "12.0"
    })