//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

extension ListViewController {

    // MARK: Type: UIViewController, Access: Internal

    internal override func loadView() {
        view = UIView()
    }

    internal override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }
}
