//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

extension LoginViewController {

    // MARK: Type: LoginViewController, Topic: Layout, Access: Internal

    internal func setUpLayout() {
        setUpEmailAdressLabelLayout()
        setUpEmailAdressTextFieldLayout()
        setUpPasswordLabelLayout()
        setUpPasswordTextFieldLayout()
        setUpButtonLayout()
        setUpActivityIndicatorLayout()
    }

    // MARK: Type: LoginViewController, Topic: Layout, Access: Private

    private func setUpEmailAdressLabelLayout() {
        view.addSubview(emailAdressLabel)
        emailAdressLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailAdressLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: Constants.verticalEdgesPadding),
            emailAdressLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.horizontalMargin),
            emailAdressLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.horizontalMargin),
            emailAdressLabel.heightAnchor.constraint(equalToConstant: Constants.defaultElementsHeight)
        ])
    }

    private func setUpEmailAdressTextFieldLayout() {
        view.addSubview(emailAdressTextField)
        emailAdressTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailAdressTextField.topAnchor.constraint(equalTo: emailAdressLabel.bottomAnchor, constant: Constants.verticalPadding),
            emailAdressTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.horizontalMargin),
            emailAdressTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.horizontalMargin),
            emailAdressTextField.heightAnchor.constraint(equalToConstant: Constants.defaultElementsHeight)
        ])
    }

    private func setUpPasswordLabelLayout() {
        view.addSubview(passwordLabel)
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: emailAdressTextField.bottomAnchor, constant: Constants.groupVerticalMargin),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.horizontalMargin),
            passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.horizontalMargin),
            passwordLabel.heightAnchor.constraint(equalToConstant: Constants.defaultElementsHeight)
        ])
    }

    private func setUpPasswordTextFieldLayout() {
        view.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: Constants.groupVerticalMargin),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.horizontalMargin),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.horizontalMargin),
            passwordTextField.heightAnchor.constraint(equalToConstant: Constants.defaultElementsHeight)
        ])
    }

    private func setUpButtonLayout() {
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -Constants.verticalEdgesPadding),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: Constants.defaultElementsHeight)
        ])
    }

    private func setUpActivityIndicatorLayout() {
        view.addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
