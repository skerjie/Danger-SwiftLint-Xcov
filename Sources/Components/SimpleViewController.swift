//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

open class SimpleViewController: UIViewController {

    // MARK: Type: NSCoding, Access: Internal

    @available(*, unavailable, message: "Conformance to NSCoding is disabled for this type")
    public required convenience init?(coder: NSCoder) {
        NSLog("Suppressed an illegal attempt to decode an instance of `\(String(reflecting: Self.self))` using a `\(String(reflecting: NSCoder.self))`.")
        return nil
    }

    @available(*, unavailable, message: "Conformance to NSCoding is disabled for this type")
    public final override func encode(with coder: NSCoder) {
        NSLog("Suppressed an illegal attempt to encode an instance of `\(String(reflecting: Self.self))` using a `\(String(reflecting: NSCoder.self))`.")
    }
}
