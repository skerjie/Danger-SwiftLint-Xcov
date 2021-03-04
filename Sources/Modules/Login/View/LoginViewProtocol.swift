//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

internal protocol LoginViewProtocol: AnyObject {

    // MARK: Type: LoginViewProtocol, Access: Internal

    func showActivityIndicator()

    func hideActivityIndicator()

    func isURL(_ string: String?) -> Bool
}
