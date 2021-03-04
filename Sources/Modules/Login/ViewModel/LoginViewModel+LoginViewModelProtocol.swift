//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import Foundation

extension LoginViewModel: LoginViewModelProtocol {

    // MARK: Type: LoginViewModelProtocol, Access: Internal

    internal var url: String {
        return "https://www.random.org/strings/?num=10&len=8&digits=on&upperalpha=on&loweralpha=on&unique=on&format=plain&rnd=new"
    }

    internal func tryToLogin() {
        view?.showActivityIndicator()
        if loginModel.email == Constants.hardcodedLogin && loginModel.password == Constants.hardcodedPassword {
            let session = URLSession(configuration: .default)
            guard view?.isURL(url) ?? false,
                  let url = URL(string: url) else {
                showError()
                return
            }
            session.dataTask(with: url) { data, response, error in
                if error == nil {
                    DispatchQueue.main.async { [weak self] in
                        guard let data = data else {
                            self?.showError()
                            return
                        }
                        if let stringData = String(data: data, encoding: .ascii) {
                            self?.view?.hideActivityIndicator()
                            if let stringsModel = self?.parseAndSetUpListModel(from: stringData) {
                                self?.coordinator?.successfullyLoggedIn(with: stringsModel)
                            } else {
                                self?.showError()
                            }
                        }
                    }
                }
            }
            .resume()
        } else {
            showError()
        }
    }

    internal func parseAndSetUpListModel(from string: String) -> [String] {
        var strings: [String] = []
        string
            .split(separator: Constants.separator)
            .map { String($0) }
            .forEach { strings.append($0) }
        return strings
    }
}
