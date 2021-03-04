//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

internal final class ListViewController: SimpleViewController {

    // MARK: Type: ListViewController, Topic: ViewModel, Access: Internal

    internal typealias ViewModel = ListViewModelProtocol

    internal init(viewModel: ViewModel) {
        self.viewModel = viewModel

        super.init(nibName: nil, bundle: nil)
    }

    // MARK: Type: ListViewController, Topic: ViewModel, Access: Internal

    internal let viewModel: ViewModel

    // MARK: Type: ListViewController, Topic: UserInterface, Access: Internal

    internal let tableView = UITableView()
    internal let logOutButton = UIButton()
}
