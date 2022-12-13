load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

##### Workspace ToC #####
### 1. Go
### 2. Android
### 3. Kotlin
### 4. JVM
### 5. iOS
### 6. C/C++ (Galley)


http_archive(
    name = "rules_license",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_license/releases/download/0.0.3/rules_license-0.0.3.tar.gz",
        "https://github.com/bazelbuild/rules_license/releases/download/0.0.3/rules_license-0.0.3.tar.gz",
    ],
    sha256 = "00ccc0df21312c127ac4b12880ab0f9a26c1cff99442dc6c5a331750360de3c3",
)


##### Go #####

# http_archive(
#     name = "io_bazel_rules_go",
#     sha256 = "099a9fb96a376ccbbb7d291ed4ecbdfd42f6bc822ab77ae6f1b5cb9e914e94fa",
#     urls = [
#         "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.35.0/rules_go-v0.35.0.zip",
#         "https://github.com/bazelbuild/rules_go/releases/download/v0.35.0/rules_go-v0.35.0.zip",
#     ],
# )

# http_archive(
#     name = "bazel_gazelle",
#     patch_args = ["-p1"],  # Needed for the above patch to be recognized
#     patches = ["patches/gazelle.patch"],  # Needed for gazelle v0.25: see https://github.com/bazelbuild/bazel-gazelle/issues/1217
#     sha256 = "5982e5463f171da99e3bdaeff8c0f48283a7a5f396ec5282910b9e8a49c0dd7e",
#     urls = [
#         "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.25.0/bazel-gazelle-v0.25.0.tar.gz",
#         "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.25.0/bazel-gazelle-v0.25.0.tar.gz",
#     ],
# )

# load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
# load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
# load("//src/rudder:deps.bzl", "go_dependencies")
# load("//tools/buildbot:deps.bzl", "go_buildbot_dependencies")

# # gazelle:repository_macro tools/buildbot/deps.bzl%go_buildbot_dependencies
# go_buildbot_dependencies()

# # gazelle:repository_macro src/rudder/deps.bzl%go_dependencies
# go_dependencies()

# go_rules_dependencies()

# go_register_toolchains(version = "1.19.1")

# gazelle_dependencies()

# ##### Android #####

# load("//tools/android_repositories:defs.bzl", "android_repositories")
# android_repositories(
#     name = "local_config_android",
#     sdk_api_level = 31,
#     ndk_api_level = 25,
#     build_tools_version = "33.0.0"
# )
# load("@local_config_android//:android_repositories.bzl", "android_workspace")
# android_workspace()

# git_repository(
#     name = "tools_android",
#     commit = "7224f55d7fafe12a72066eb1a2ad1e1526a854c4",
#     remote = "https://github.com/bazelbuild/tools_android.git",
#     shallow_since = "1652740093 -0400",
# )

# load("@tools_android//tools/googleservices:defs.bzl", "google_services_workspace_dependencies")

# google_services_workspace_dependencies()

# git_repository(
#     name = "grab_bazel_common",
#     commit = "4bbd90935c10d152aa01bf06d7288158b5126c50",
#     remote = "https://github.com/pswaminathan/grab-bazel-common.git",
#     shallow_since = "1666664378 -0400",
# )

# # local_repository(
# #     name = "grab_bazel_common",
# #     path = "/Users/p/Code/bazel/grab-bazel-common",
# # )

# load("@grab_bazel_common//:workspace_defs.bzl", "android_tools")

# android_tools(
#     commit = "5c5efc6fb63740bc3c4db55365a4006708b52b70",
#     remote = "https://github.com/grab/grab-bazel-common.git",
#     shallow_since = "1665710227 +0800",
# )

# ### Dagger is a dependency of grab_bazel_common. Bazel resolves transitive dependencies
# ###  for build rules, but *not* for repositories. Thus, we are required to import it.
# DAGGER_TAG = "2.40.5"

# http_archive(
#     name = "dagger",
#     sha256 = "5a6923e56edbc1e34c8089ecab5338a1b8ddb79a3a54b6c86cdcf31212680d32",
#     strip_prefix = "dagger-dagger-%s" % DAGGER_TAG,
#     urls = ["https://github.com/google/dagger/archive/dagger-%s.zip" % DAGGER_TAG],
# )

# load("@dagger//:workspace_defs.bzl", "DAGGER_ARTIFACTS", "DAGGER_REPOSITORIES")

# # Android bundle tool.
# http_jar(
#     name = "android_bundletool",
#     sha256 = "1e8430002c76f36ce2ddbac8aadfaf2a252a5ffbd534dab64bb255cda63db7ba",
#     url = "https://github.com/google/bundletool/releases/download/1.8.0/bundletool-all-1.8.0.jar",
# )

# ##### Kotlin #####

# http_archive(
#     name = "io_bazel_rules_kotlin",
#     sha256 = "946747acdbeae799b085d12b240ec346f775ac65236dfcf18aa0cd7300f6de78",
#     urls = ["https://github.com/bazelbuild/rules_kotlin/releases/download/v1.7.0-RC-2/rules_kotlin_release.tgz"],
# )

# load("@io_bazel_rules_kotlin//kotlin:repositories.bzl", "kotlin_repositories", "kotlinc_version")

# kotlin_repositories(
#     compiler_release = kotlinc_version(
#         release = "1.6.21", # needs to be fixed for compose
#         sha256 = "632166fed89f3f430482f5aa07f2e20b923b72ef688c8f5a7df3aa1502c6d8ba"
#     )
# )

# register_toolchains("//:kotlin_toolchain")

# http_archive(
#     name = "robolectric",
#     urls = ["https://github.com/robolectric/robolectric-bazel/archive/4.8.1.tar.gz"],
#     sha256 = "95d61d6b94bd19b0d528e47a5c1e482f2b2c914438028e9465b7ebd026013672",
#     strip_prefix = "robolectric-bazel-4.8.1",
# )
# load("@robolectric//bazel:robolectric.bzl", "robolectric_repositories")
# robolectric_repositories()

# ##### JVM #####

# http_archive(
#     name = "contrib_rules_jvm",
#     sha256 = "79773625951a7a6dc0fc1636ef2388253b69a1e8109b34198c191953280648ab",
#     strip_prefix = "rules_jvm-0.3.0",
#     url = "https://github.com/bazel-contrib/rules_jvm/archive/v0.3.0.tar.gz",
# )

# # Fetches the contrib_rules_jvm dependencies.
# # If you want to have a different version of some dependency,
# # you should fetch it *before* calling this.
# load("@contrib_rules_jvm//:repositories.bzl", "contrib_rules_jvm_deps")

# contrib_rules_jvm_deps()

# # Now ensure that the downloaded deps are properly configured
# load("@contrib_rules_jvm//:setup.bzl", "contrib_rules_jvm_setup")

# contrib_rules_jvm_setup()

# RULES_JVM_EXTERNAL_TAG = "4.4.2"

# http_archive(
#     name = "rules_jvm_external",
#     sha256 = "735602f50813eb2ea93ca3f5e43b1959bd80b213b836a07a62a29d757670b77b",
#     strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
#     url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
# )

# load("@rules_jvm_external//:defs.bzl", "maven_install")
# load("@rules_jvm_external//:specs.bzl", "maven")
# load("//:src/kotlin/deps.bzl", "common_kotlin_deps")
# load("//:src/seaborn/deps.bzl", "seaborn_deps")
# load("//src/coxswain:deps.bzl", "coxswain_dependencies")
# load("//:src/airborne/Android/deps.bzl", "airborne_android_dependencies")
# load("//:src/live/netty-raknet/deps.bzl", "netty_raknet_dependencies")
# load("//src/live/ntp-time:deps.bzl", "ntp_time_dependencies")
# load("//src/live/sofa-jraft:deps.bzl", "sofa_jraft_dependencies")

# GRAB_BAZEL_COMMON_ARTIFACTS = [
#     "com.google.guava:guava:29.0-jre",
#     "com.google.auto:auto-common:1.2",
#     "com.google.auto.service:auto-service:1.0.1",
#     "com.squareup:javapoet:1.13.0",
#     "com.github.ajalt:clikt:2.8.0",
#     "org.ow2.asm:asm:9.0",
#     "org.ow2.asm:asm-tree:9.0",
#     "xmlpull:xmlpull:1.1.3.1",
#     "net.sf.kxml:kxml2:2.3.0",
#     "org.jetbrains.kotlin:kotlin-parcelize-compiler:1.6.10",
#     "org.jetbrains.kotlin:kotlin-parcelize-runtime:1.6.10",
# ]

# SHIMMED_ARTIFACTS = [
#     "androidx.emoji2:emoji2:1.2.0",
# ]

# maven_artifacts = (
#     GRAB_BAZEL_COMMON_ARTIFACTS +
#     DAGGER_ARTIFACTS +
#     common_kotlin_deps() +
#     seaborn_deps() +
#     coxswain_dependencies() +
#     airborne_android_dependencies() +
#     netty_raknet_dependencies() +
#     ntp_time_dependencies() +
#     sofa_jraft_dependencies()
# )

# maven_install(
#     artifacts = maven_artifacts,
#     fetch_sources = True,
#     override_targets = {
#         "androidx.emoji2:emoji2": "@//third_party/androidx/emoji2:androidx_emoji2_emoji2",
#     },
#     repositories = [
#         "https://dl.google.com/dl/android/maven2/",
#         "https://repo.maven.apache.org/maven2/",
#         "https://plugins.gradle.org/m2/",
#         "https://maven.pkg.jetbrains.space/public/p/compose/dev",
#         "https://appboy.github.io/appboy-android-sdk/sdk",
#         "https://sdk.smartlook.com/android/release",
#         "https://jitpack.io",
#     ],
#     version_conflict_policy = "pinned",
#     jetify = True,
#     jetify_include_list = [
#         "it.sephiroth.android.library.rangeseekbar:rangeseekbar",
#         "it.sephiroth.android.library.simplelogger:simple-logger",
#         "com.android.support:appcompat-v7",
#         "com.android.support:animated-vector-drawable",
#         "com.android.support:support-annotations",
#         "com.android.support:support-compat",
#         "com.android.support:support-core-ui",
#         "com.android.support:support-core-utils",
#         "com.android.support:support-fragment",
#         "com.android.support:support-media-compat",
#         "com.android.support:support-vector-drawable",
#     ],
#     resolve_timeout = 900,
#     maven_install_json = "@//:conf/maven_install.json",
# )

# load("@maven//:defs.bzl", "pinned_maven_install")
# pinned_maven_install()

# # Create a second maven repository that downloads the original packages for
# # fixing. This will be used to override the root @maven target with the hacked
# # version compiled against the correct dependencies.
# maven_install(
#     name = "fixed_targets",
#     artifacts = SHIMMED_ARTIFACTS,
#     fetch_sources = True,
#     repositories = [
#         "https://dl.google.com/dl/android/maven2/",
#         "https://repo1.maven.org/maven2",
#     ],
#     maven_install_json = "@//:conf/fixed_targets_install.json",
# )

# load("@fixed_targets//:defs.bzl", fixed_targets_pinned_maven_install = "pinned_maven_install")
# fixed_targets_pinned_maven_install()



##### iOS/Swift

http_archive(
    name = "com_github_buildbuddy_io_rules_xcodeproj",
    sha256 = "b4e71c7740bb8cfa4bc0b91c0f18ac512debcc111ebe471280e24f579a3b0782",
    url = "https://github.com/buildbuddy-io/rules_xcodeproj/releases/download/0.10.2/release.tar.gz",
)

# rules_xcodeproj@0.9.0 installs the following repository rules:
#  1. rules_swift@1.2.0
#  2. rules_apple@1.1.2
#  3. apple_support@1.3.0
load(
    "@com_github_buildbuddy_io_rules_xcodeproj//xcodeproj:repositories.bzl",
    "xcodeproj_rules_dependencies",
)

xcodeproj_rules_dependencies()

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

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

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()


http_archive(
    name = "cgrindel_rules_spm",
    sha256 = "03718eb865a100ba4449ebcbca6d97bf6ea78fa17346ce6d55532312e8bf9aa8",
    strip_prefix = "rules_spm-0.11.0",
    urls = [
        "http://github.com/cgrindel/rules_spm/archive/v0.11.0.tar.gz",
    ],
)

load(
    "@cgrindel_rules_spm//spm:deps.bzl",
    "spm_rules_dependencies",
)

spm_rules_dependencies()

##### Swiftlint #####
http_archive(
    name = "SwiftLint",
    sha256 = "ef49a8c0dcb70fb5befe549b016735deef72e1ac9f68562b288f23e496c164af",
    url = "https://github.com/realm/SwiftLint/releases/download/0.50.0-rc.4/bazel.tar.gz",
)

load("@SwiftLint//bazel:repos.bzl", "swiftlint_repos")

swiftlint_repos()

load("@SwiftLint//bazel:deps.bzl", "swiftlint_deps")

swiftlint_deps()

# http_archive(
#     name = "Firebase",
#     urls = ["https://github.com/firebase/firebase-ios-sdk/releases/download/v8.9.1/Firebase.zip"],
#     sha256 = "e03dc8fe6459f276391d1bfec7d7b90ae59fc457a5120724c702b86e954a32dd",
#     build_file = "@//:third_party/firebase-ios/firebase.BUILD",
#     strip_prefix = "Firebase"
# )

# http_archive(
#     name = "BrazeKit",
#     urls = ["https://github.com/braze-inc/braze-swift-sdk/releases/download/5.5.0/BrazeKit.zip"],
#     sha256 = "a20b8922491b014387b09f8284738585a700735b5f48ff88446ba7e3d2422544",
#     build_file = "@//:third_party/braze/ios_brazekit.BUILD",
# )

# http_archive(
#     name = "BrazeUI",
#     urls = ["https://github.com/braze-inc/braze-swift-sdk/archive/refs/tags/5.5.0.zip"],
#     sha256 = "6540e762e6a2767d94a9a68381b72bedc9728b68c421db99f725c09bff0bbc3e",
#     build_file = "@//:third_party/braze/ios_brazeui.BUILD",
#     strip_prefix = "braze-swift-sdk-5.5.0",
# )

# load("@cgrindel_rules_spm//spm:defs.bzl", "spm_repositories")
# load("//src/airborne/iOS:deps.bzl", "airborne_ios_dependencies")

# spm_repositories(
#     name = "swift_pkgs",
#     platforms = [
#         ".iOS(.v10)",
#         ".macOS(.v10_15)",
#     ],
#     dependencies = airborne_ios_dependencies(),
# )

# load("@build_bazel_rules_apple//apple:apple.bzl", "provisioning_profile_repository")

# provisioning_profile_repository(
#     name = "local_provisioning_profiles",
#     fallback_profiles = "@other//src/airborne/iOS/airborne:ios_provisioning_profiles",
#     repo_mapping = {
#         "@other": "@"
#     }
# )



##### C/C++ (Galley) #####

# load("//:src/galley/repositories.bzl", "galley_repositories")
# galley_repositories()

# load("//third_party/sokol-shdc:toolchains.bzl", "sokol_shdc_register_toolchains")

# sokol_shdc_register_toolchains()



# ##### JUnit 5 #####

# load("//:third_party/junit5/rules.bzl", "junit_jupiter_java_repositories", "junit_platform_java_repositories")

# JUNIT_JUPITER_VERSION = "5.8.2"

# JUNIT_PLATFORM_VERSION = "1.8.2"

# junit_jupiter_java_repositories(
#     version = JUNIT_JUPITER_VERSION,
# )

# junit_platform_java_repositories(
#     version = JUNIT_PLATFORM_VERSION,
# )

http_archive(
    name = "rules_proto_grpc",
    sha256 = "fb7fc7a3c19a92b2f15ed7c4ffb2983e956625c1436f57a3430b897ba9864059",
    strip_prefix = "rules_proto_grpc-4.3.0",
    urls = ["https://github.com/rules-proto-grpc/rules_proto_grpc/archive/4.3.0.tar.gz"],
)

load("@rules_proto_grpc//:repositories.bzl", "rules_proto_grpc_toolchains", "rules_proto_grpc_repos")
rules_proto_grpc_toolchains()
rules_proto_grpc_repos()

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
rules_proto_dependencies()
rules_proto_toolchains()
