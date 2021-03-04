//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import Foundation

extension ListViewController {

    // MARK: Type: ListViewController, Topic: EventHandling, Access: Internal

    @objc
    internal func logOut() {
        viewModel.logOut()
    }
}
