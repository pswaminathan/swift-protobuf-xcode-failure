# swift-protobuf-xcode-failure
Demo of failure using Swift-protobuf in new Xcode

On `main`:

```
bazel run src/swift:main
INFO: Analyzed target //src/swift:main (0 packages loaded, 0 targets configured).
INFO: Found 1 target...
Target //src/swift:main up-to-date:
  bazel-bin/src/swift/main
INFO: Elapsed time: 1.870s, Critical Path: 1.71s
INFO: 4 processes: 1 internal, 2 darwin-sandbox, 1 worker.
INFO: Build completed successfully, 4 total actions
INFO: Running command line: bazel-bin/src/swift/main
packet: ExampleProto.Example_Packet:
id: 234
timestamp {
  seconds: 1670950397
}
```

On `failing-build`:

```
bazel run src/swift:main
INFO: Analyzed target //src/swift:main (54 packages loaded, 1152 targets configured).
INFO: Found 1 target...
INFO: From Compiling src/google/protobuf/stubs/strutil.cc [for tool]:
external/com_github_protocolbuffers_protobuf/src/google/protobuf/stubs/strutil.cc:506:11: warning: 'sprintf' is deprecated: This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use snprintf(3) instead. [-Wdeprecated-declarations]
          sprintf(dest + used, (use_hex ? "\\x%02x" : "\\%03o"),
          ^
/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.0.sdk/usr/include/stdio.h:188:1: note: 'sprintf' has been explicitly marked deprecated here
__deprecated_msg("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use snprintf(3) instead.")
^
/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.0.sdk/usr/include/sys/cdefs.h:215:48: note: expanded from macro '__deprecated_msg'
        #define __deprecated_msg(_msg) __attribute__((__deprecated__(_msg)))
                                                      ^
1 warning generated.
ERROR: /Users/p/Code/demos/swift-protobuf-xcode-failure/src/proto/BUILD.bazel:16:20: Compiling protoc outputs for swift_plugin plugin on target @//src/proto:example_swift_proto_pb failed: (Exit 1): bash failed: error executing command (from target //src/proto:example_swift_proto_pb) /bin/bash -c ... (remaining 6 arguments skipped)

Use --sandbox_debug to see verbose messages from the sandbox and retain the sandbox build root for debugging
dyld[38748]: Symbol not found: (_$s10Foundation12CharacterSetV11whitespacesACvgZ)
  Referenced from: '/private/var/tmp/_bazel_p/a2414e84e883c4182b674af589eab4f2/execroot/__main__/bazel-out/darwin_arm64-opt-exec-2B5CBBC6/bin/external/com_github_apple_swift_protobuf/ProtoCompilerPlugin'
  Expected in: '/System/Library/Frameworks/Foundation.framework/Versions/C/Foundation'
--swift_plugin_out: protoc-gen-swift_plugin: Plugin killed by signal 6.
Target //src/swift:main failed to build
Use --verbose_failures to see the command lines of failed build steps.
INFO: Elapsed time: 43.706s, Critical Path: 41.77s
INFO: 240 processes: 21 internal, 215 darwin-sandbox, 4 worker.
FAILED: Build did NOT complete successfully
ERROR: Build failed. Not running target
```
