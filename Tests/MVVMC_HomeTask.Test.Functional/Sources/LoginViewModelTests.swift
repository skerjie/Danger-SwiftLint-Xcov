//
//  LoginViewModelTests.swift
//  MVVMC_HomeTaskTests
//
//  Created by Andrei Palonski on 11/22/20.
//

import XCTest
@testable import MVVMC_HomeTask

class LoginViewModelTests: XCTestCase {

    func testInitialDefaults() {
        let vm = makeSut()
        let testURL =  "https://www.random.org/strings/?num=10&len=8&digits=on&upperalpha=on&loweralpha=on&unique=on&format=plain&rnd=new"
        XCTAssertEqual("", vm.loginModel.email)
        XCTAssertEqual("", vm.loginModel.password)
        XCTAssertEqual(testURL, vm.url)
        XCTAssertNil(vm.coordinator)
        XCTAssertNil(vm.view)
    }

    func testEmail() {
        let vm = makeSut()
        vm.loginModel.email = "andrei_palonski@epam.com"
        XCTAssertEqual("andrei_palonski@epam.com", vm.loginModel.email)
    }

    func testPassword() {
        let vm = makeSut()
        vm.loginModel.password = "strongPassw0rd"
        XCTAssertEqual("strongPassw0rd", vm.loginModel.password)
    }

    func testWrongUrl() {
        let view = MockLoginView()
        let wrongUrl = "blabla.com"
        XCTAssertFalse(view.isURL(wrongUrl))
    }

    func testValidUrl() {
        let vm = makeSut()
        let view = MockLoginView()
        XCTAssertTrue(view.isURL(vm.url))
    }

    func testDataParsing() {
        let vm = makeSut()
        let testString = "bldblgfd/sfskjdhfk/fdsdfjh/fkjsdhf"
        let result = vm.parseAndSetUpListModel(from: testString)
        XCTAssertNotEqual(result, ["bldblgfd", "sfskjdhfk", "fdsdfjh", "fkjsdhf"])
        XCTAssertEqual(result, ["bldblgfd/sfskjdhfk/fdsdfjh/fkjsdhf"])
    }

    func testCorrectDataParsing() {
        let vm = makeSut()
        let testString = "bldblgfd\nsfskjdhfk\nfdsdfjh\nfkjsdhf\n"
        let result = vm.parseAndSetUpListModel(from: testString)
        XCTAssertEqual(result, ["bldblgfd", "sfskjdhfk", "fdsdfjh", "fkjsdhf"])
        XCTAssertNotEqual(result, ["bldblgfd/sfskjdhfk/fdsdfjh/fkjsdhf"])
    }

    func testViewAndCoordinatorFunctionsCalled() {
        let model = LoginModel(email: "", password: "")
        let viewModel = LoginViewModel(loginModel: model)
        let mockedView = MockLoginView()
        let mockedCoordinator = MockCoordinator()
        viewModel.coordinator = mockedCoordinator
        viewModel.view = mockedView

        viewModel.tryToLogin()

        XCTAssertTrue(mockedView.showingIndicator)
        XCTAssertTrue(mockedView.hideIndicator)
        XCTAssertTrue(mockedCoordinator.errorAlertCalled)
    }

    func testViewAndCoordinatorFunctionsValidCredsAndURL() {
        let model = LoginModel(email: "user", password: "123qwe")
        let viewModel = LoginViewModel(loginModel: model)
        let mockedView = MockLoginView()
        let mockedCoordinator = MockCoordinator()
        viewModel.coordinator = mockedCoordinator
        viewModel.view = mockedView

        viewModel.tryToLogin()

        XCTAssertTrue(mockedView.showingIndicator)
        XCTAssertFalse(mockedView.hideIndicator)
        XCTAssertFalse(mockedCoordinator.errorAlertCalled)
    }
}

private extension LoginViewModelTests {
    func makeSut() -> LoginViewModel {
        let model = LoginModel(email: "", password: "")
        let viewModel = LoginViewModel(loginModel: model)
        return viewModel
    }
}

private class MockLoginView: LoginViewProtocol {
    var showingIndicator = false
    var hideIndicator = false

    func showActivityIndicator() {
        showingIndicator = true
    }

    func hideActivityIndicator() {
        hideIndicator = true
    }

    func isURL(_ string: String?) -> Bool {
        if let urlString = string {
            if let url = URL(string: urlString) {
                return UIApplication.shared.canOpenURL(url)
            }
        }
        return false
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
