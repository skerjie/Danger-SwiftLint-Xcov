//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

extension LoginViewController: LoginViewProtocol {

    // MARK: Type: LoginViewProtocol, Access: Internal

    internal func showActivityIndicator() {
        activityIndicator.startAnimating()
    }

    internal func hideActivityIndicator() {
        activityIndicator.stopAnimating()
    }

    internal func isURL(_ string: String?) -> Bool {
        if let urlString = string {
            if let url = URL(string: urlString) {
                return UIApplication.shared.canOpenURL(url)
            }
        }
        return false
    }
}
