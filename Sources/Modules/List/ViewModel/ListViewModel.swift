//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

internal final class ListViewModel {

    // MARK: Type: ListViewModel, Access: Internal

    internal init(listModel: ListModelProtocol) {
        self.listModel = listModel
    }

    internal weak var coordinator: AppCoordinatorProtocol?

    // MARK: Type: ListModelProtocol, Access: Internal

    internal let listModel: ListModelProtocol
}
