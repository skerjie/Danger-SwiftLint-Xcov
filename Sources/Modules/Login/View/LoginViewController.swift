//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

internal final class LoginViewController: SimpleViewController {

    // MARK: Type: LoginViewController, Topic: ViewModel, Access: Private

    internal typealias ViewModel = LoginViewModelProtocol

    internal init(viewModel: ViewModel) {
        self.viewModel = viewModel

        super.init(nibName: nil, bundle: nil)
    }

    internal var viewModel: ViewModel

    // MARK: Type: LoginViewController, Topic: UserInterface, Access: Internal

    internal let emailAdressLabel = UILabel()
    internal let emailAdressTextField = UITextField()
    internal let passwordLabel = UILabel()
    internal let passwordTextField = UITextField()
    internal let loginButton = UIButton()
    internal let activityIndicator = UIActivityIndicatorView()
}
