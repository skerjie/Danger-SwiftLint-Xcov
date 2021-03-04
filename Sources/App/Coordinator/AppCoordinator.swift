//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

final class AppCoordinator {

    // MARK: Type: AppCoordinator, Access: Internal

    internal init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    internal let navigationController: UINavigationController
}
