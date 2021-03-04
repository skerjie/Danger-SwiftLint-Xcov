//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

internal protocol LoginViewModelProtocol {

    // MARK: Type: LoginViewModelProtocol, Access: Internal

    var url: String { get }

    var loginModel: LoginModelProtocol { get set }

    func tryToLogin()
    
    func parseAndSetUpListModel(from string: String) -> [String]
}
