//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

internal final class ListModel: ListModelProtocol {

    // MARK: Type: ListModel, Access: Internal

    internal init(listStrings: [String]) {
        self.listStrings = listStrings
    }

    // MARK: Type: ListModelProtocol, Access: Internal

    internal var listStrings: [String]
}
