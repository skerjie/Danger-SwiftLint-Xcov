//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

internal protocol AppCoordinatorProtocol: AnyObject {

    // MARK: Type: AppCoordinatorProtocol, Access: Internal

    func start()

    func successfullyLoggedIn(with strings: [String])

    func showErrorAlert()

    func goToLoginScreen()
}
