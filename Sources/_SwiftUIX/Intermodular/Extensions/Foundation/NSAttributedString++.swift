//
// Copyright (c) Vatsal Manot
//

#if os(iOS) || os(macOS) || os(tvOS) || os(visionOS) || targetEnvironment(macCatalyst)

import Foundation
import Swift
import SwiftUI

extension NSAttributedString {
    public var _isSingleTextAttachment: Bool {
        guard length == 1,
              self.string.unicodeScalars.first?.value == 0xFFFC
        else {
            return false
        }
        return true
    }
}

#endif
