//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

extension ListViewModel: ListViewModelProtocol {

    // MARK: Type: ListViewModelProtocol, Access: Internal

    internal var numberOfStringRows: Int {
        listModel.listStrings.count
    }

    internal var strings: [String] {
        listModel.listStrings
    }

    internal func logOut() {
        coordinator?.goToLoginScreen()
    }
}
