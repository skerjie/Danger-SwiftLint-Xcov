//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

extension LoginViewController {

    // MARK: Type: LoginViewController, Topic: Content, Access: Internal

    internal func resetContent() {
        resetLoginButtonContent()
        resetPasswordFieldContent()
        resetEmailAdressTextFieldContent()
    }

    // MARK: Type: LoginViewController, Topic: Content, Access: Private

    private func resetLoginButtonContent() {
        loginButton.isEnabled = !viewModel.loginModel.email.isEmpty && !viewModel.loginModel.password.isEmpty
    }

    private func resetPasswordFieldContent() {
        passwordTextField.text = ""
    }

    private func resetEmailAdressTextFieldContent() {
        emailAdressTextField.text = ""
    }
}
