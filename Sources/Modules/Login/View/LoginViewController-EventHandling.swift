//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

extension LoginViewController {

    // MARK: Type: LoginViewController, Topic: EventHandling, Access: Internal

    @objc
    internal func tryToLogin() {
        viewModel.tryToLogin()
    }

    @objc
    internal func emailAdressTextFieldDidChange(_ textField: UITextField) {
        if let text = textField.text, !text.isEmpty {
            let lowercasedText = text.lowercased()
            textField.text = lowercasedText
            viewModel.loginModel.email = lowercasedText
            loginButton.isEnabled = !viewModel.loginModel.email.isEmpty && !viewModel.loginModel.password.isEmpty
        }
    }

    @objc
    internal func passwordFieldDidChange(_ textField: UITextField) {
        if let text = textField.text {
            viewModel.loginModel.password = text
            loginButton.isEnabled = !viewModel.loginModel.email.isEmpty && !viewModel.loginModel.password.isEmpty
        }
    }
}
