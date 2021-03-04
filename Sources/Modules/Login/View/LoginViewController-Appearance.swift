//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

extension LoginViewController {

    // MARK: Type: LoginViewController, Topic: Appearance, Access: Internal

    internal func setUpAppearance() {
        setUpViewAppearance()
        setUpLoginButtonAppearance()
        setUpEmailAdressLabelAppearance()
        setUpEmailAdressTextFieldAppearance()
        setUpPasswordLabelAppearance()
        setUpPasswordTextFieldAppearance()
        setUpActivityIndicatorAppearance()
    }

    // MARK: Type: LoginViewController, Topic: Appearance, Access: Private

    private func setUpViewAppearance() {
        view.backgroundColor = .white
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    private func setUpLoginButtonAppearance() {
        loginButton.setTitle(Constants.loginButtonTitle, for: .normal)
        loginButton.setTitleColor(.systemBlue, for: .normal)
        loginButton.setTitleColor(UIColor.systemBlue.withAlphaComponent(Constants.buttonColorAlpha), for: .highlighted)
        loginButton.setTitleColor(.lightGray, for: .disabled)
        loginButton.titleLabel?.font = .systemFont(ofSize: Constants.labelsFontSize, weight: .medium)
        loginButton.addTarget(self, action: #selector(tryToLogin), for: .touchUpInside)
    }

    private func setUpEmailAdressLabelAppearance() {
        emailAdressLabel.text = Constants.emailAdressLabelText
        emailAdressLabel.textColor = .darkGray
        emailAdressLabel.textAlignment = .left
        emailAdressLabel.font = .systemFont(ofSize: Constants.labelsFontSize, weight: .medium)
    }

    private func setUpEmailAdressTextFieldAppearance() {
        emailAdressTextField.placeholder = Constants.emailTextFieldPlaceholder
        emailAdressTextField.borderStyle = .roundedRect
        emailAdressTextField.clearButtonMode = .whileEditing
        emailAdressTextField.addTarget(self, action: #selector(emailAdressTextFieldDidChange(_:)), for: .editingChanged)
    }

    private func setUpPasswordLabelAppearance() {
        passwordLabel.text = Constants.passwordLabelText
        passwordLabel.textColor = .darkGray
        passwordLabel.textAlignment = .left
        passwordLabel.font = .systemFont(ofSize: Constants.labelsFontSize, weight: .medium)
    }

    private func setUpPasswordTextFieldAppearance() {
        passwordTextField.placeholder = Constants.passwordTextFieldPlaceholder
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.clearButtonMode = .whileEditing
        passwordTextField.addTarget(self, action: #selector(passwordFieldDidChange(_:)), for: .editingChanged)
    }

    private func setUpActivityIndicatorAppearance() {
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = .large
    }
}
