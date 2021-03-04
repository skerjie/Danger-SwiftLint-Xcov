//
//  ListViewModelTests.swift
//  MVVMC_HomeTaskTests
//
//  Created by Andrei Palonski on 11/22/20.
//

import XCTest
@testable import MVVMC_HomeTask

class ListViewModelTests: XCTestCase {
    func testInitialDefaults() {
        let vm = makeSut()
        XCTAssertEqual([], vm.strings)
        XCTAssertEqual(0, vm.numberOfStringRows)
        XCTAssertNil(vm.coordinator)
    }

    func testCorrectNumberOfRows() {
        let vm = makeSut(["bldblgfd", "sfskjdhfk", "fdsdfjh", "fkjsdhf"])
        XCTAssertEqual(vm.numberOfStringRows, 4)
        XCTAssertNotEqual(vm.numberOfStringRows, 0)
    }

    func testCoordinatorFunctionCalled() {
        let model = ListModel(listStrings: ["bldblgfd", "sfskjdhfk", "fdsdfjh", "fkjsdhf"])
        let viewModel = ListViewModel(listModel: model)
        let mockedCoordinator = MockCoordinator()
        viewModel.coordinator = mockedCoordinator

        viewModel.logOut()

        XCTAssertTrue(mockedCoordinator.goToLoginCalled)
        XCTAssertFalse(mockedCoordinator.errorAlertCalled)
        XCTAssertFalse(mockedCoordinator.successfullyLoggedInCalled)
    }
}

private extension ListViewModelTests {
    func makeSut(_ strings: [String] = []) -> ListViewModel {
        let model = ListModel(listStrings: strings)
        let viewModel = ListViewModel(listModel: model)
        return viewModel
    }
}

private class MockCoordinator: AppCoordinatorProtocol {
    func start() {}

    var errorAlertCalled = false
    var goToLoginCalled = false
    var successfullyLoggedInCalled = false

    func successfullyLoggedIn(with strings: [String]) {
        successfullyLoggedInCalled = true
    }

    func showErrorAlert() {
        errorAlertCalled = true
    }

    func goToLoginScreen() {
        goToLoginCalled = true
    }
}
