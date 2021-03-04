//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

internal final class LoginViewModel {

    // MARK: Type: LoginViewModel, Access: Internal

    internal init(loginModel: LoginModelProtocol) {
        self.loginModel = loginModel
    }

    internal weak var view: LoginViewProtocol?
    internal weak var coordinator: AppCoordinatorProtocol?

    // MARK: Type: LoginModelProtocol, Access: Internal

    internal var loginModel: LoginModelProtocol
}

extension LoginViewModel {

    // MARK: Type: LoginViewModel, Access: Internal

    func showError() {
        guard
            let view = self.view,
            let coordinator = self.coordinator
        else {
            return
        }
        view.hideActivityIndicator()
        coordinator.showErrorAlert()
    }
}
