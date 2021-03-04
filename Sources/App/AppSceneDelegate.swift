//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import UIKit

internal final class AppSceneDelegate: UIResponder, UIWindowSceneDelegate {

    // MARK: Type: AppSceneDelegate, Access: Internal

    internal var coordinator: AppCoordinatorProtocol?

    // MARK: Type: UIWindowAppSceneDelegate, Access: Internal

    internal var window: UIWindow?
}

extension AppSceneDelegate {

    // MARK: Type: AppSceneDelegate, Access: Private

    private func prepareWindowAndAppCoordinator(with windowScene: UIWindowScene) -> UIWindow {
        let appWindow = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController()

        let coordinator = AppCoordinator(navigationController: navigationController)
        coordinator.start()
        self.coordinator = coordinator

        appWindow.rootViewController = navigationController
        appWindow.makeKeyAndVisible()
        return appWindow
    }
}

extension AppSceneDelegate: UISceneDelegate {

    // MARK: Type: UIAppSceneDelegate, Access: Internal

    internal func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = scene as? UIWindowScene else {
            return
        }
        window = prepareWindowAndAppCoordinator(with: windowScene)
    }
}
