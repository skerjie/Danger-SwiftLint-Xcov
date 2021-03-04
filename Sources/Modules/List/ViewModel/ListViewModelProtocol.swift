//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

internal protocol ListViewModelProtocol: AnyObject {

    // MARK: Type: ListViewModelProtocol, Access: Internal

    var numberOfStringRows: Int { get }

    var strings: [String] { get }

    func logOut()
}
