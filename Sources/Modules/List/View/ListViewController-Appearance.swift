//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

extension ListViewController {

    // MARK: Type: ListViewController, Topic: Appearance, Access: Internal

    internal func setUpAppearance() {
        setUpViewAppearance()
        setUpTableViewAppearance()
        setUplogOutButtonAppearance()
    }

    // MARK: Type: ListViewController, Topic: Appearance, Access: Private

    private func setUpViewAppearance() {
        view.backgroundColor = .white
    }

    private func setUpTableViewAppearance() {
        tableView.dataSource = self
        tableView.register(
            UITableViewCell.self,
            forCellReuseIdentifier: String(describing: UITableViewCell.self)
        )
    }

    private func setUplogOutButtonAppearance() {
        logOutButton.setTitle(Constants.buttonTitle, for: .normal)
        logOutButton.setTitleColor(.systemBlue, for: .normal)
        logOutButton.setTitleColor(UIColor.systemBlue.withAlphaComponent(Constants.buttonColorAlpha), for: .highlighted)
        logOutButton.titleLabel?.font = .systemFont(ofSize: Constants.labelsFontSize, weight: .medium)
        logOutButton.addTarget(self, action: #selector(logOut), for: .touchUpInside)
    }
}
