//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

extension AppCoordinator: AppCoordinatorProtocol {

    // MARK: Type: AppCoordinatorProtocol, Access: Internal

    internal func start() {
        let loginModel = LoginModel(email: "", password: "")
        let loginViewModel = LoginViewModel(loginModel: loginModel)
        let loginViewController = LoginViewController(viewModel: loginViewModel)
        loginViewModel.view = loginViewController
        loginViewModel.coordinator = self
        navigationController.pushViewController(loginViewController, animated: true)
    }

    internal func successfullyLoggedIn(with strings: [String]) {
        let listModel = ListModel(listStrings: strings)
        let listViewModel = ListViewModel(listModel: listModel)
        let listViewController = ListViewController(viewModel: listViewModel)
        listViewModel.coordinator = self
        navigationController.pushViewController(listViewController, animated: true)
    }

    internal func showErrorAlert() {
        let alertController = UIAlertController(
            title: Constants.alertControllerTitle,
            message: Constants.alertControllerMessage,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: Constants.okActionTitile,
            style: .cancel,
            handler: nil
        )
        alertController.addAction(okAction)
        navigationController.present(alertController, animated: true, completion: nil)
    }

    internal func goToLoginScreen() {
        navigationController.popToRootViewController(animated: true)
    }
}
