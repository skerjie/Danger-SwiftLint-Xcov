//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

extension ListViewController {

    // MARK: Type: ListViewController, Topic: Layout, Access: Internal

    internal func setUpLayout() {
        setUpLogOutButtonLayout()
        setUpTableViewLayout()
    }

    // MARK: Type: ListViewController, Topic: Layout, Access: Private

    private func setUpTableViewLayout() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.defaultHorizontalPadding),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.defaultHorizontalPadding),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: Constants.tableViewVerticalPadding),
            tableView.bottomAnchor.constraint(equalTo: logOutButton.topAnchor, constant: -Constants.verticalPadding)
        ])
    }

    private func setUpLogOutButtonLayout() {
        view.addSubview(logOutButton)
        logOutButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logOutButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -Constants.buttonVerticalPadding),
            logOutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logOutButton.heightAnchor.constraint(equalToConstant: Constants.buttonHeight)
        ])
    }
}
