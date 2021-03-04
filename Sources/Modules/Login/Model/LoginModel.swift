//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

internal struct LoginModel: LoginModelProtocol {

    // MARK: Type: LoginModel, Access: Internal

    internal init(email: String, password: String) {
        self.email = email
        self.password = password
    }

    // MARK: Type: LoginViewModelProtocol, Access: Internal

    internal var email: String

    internal var password: String
}
