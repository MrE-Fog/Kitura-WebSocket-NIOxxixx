/*
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation

/// An error enum used when throwing errors within KituraWebSocket.
public enum WebSocketError: Error {
    case invalidOpCode(UInt8)
    case unmaskedFrame
}


extension WebSocketError: CustomStringConvertible {
    /// Generate a printable version of this enum.
    public var description: String {
        switch self {
        case .invalidOpCode(let opCode):
            return "Parsed a frame with an invalid operation code of \(opCode)"
        case .unmaskedFrame:
            return "Received a frame from a client that wasn't masked"
        }
    }
}