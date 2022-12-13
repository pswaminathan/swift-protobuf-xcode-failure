import Foundation
import ExampleProto
import SwiftProtobuf

let packet = Example_Packet.with {
    $0.id = UInt32(234)
    $0.timestamp = Google_Protobuf_Timestamp.with {
        $0.seconds = Int64(NSDate().timeIntervalSince1970)
    }
}
print("packet: \(packet)")
