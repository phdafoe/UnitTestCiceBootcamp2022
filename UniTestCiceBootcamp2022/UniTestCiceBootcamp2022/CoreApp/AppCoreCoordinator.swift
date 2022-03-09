//
//  AppCoreCoordinator.swift
//  UniTestCiceBootcamp2022
//
//  Created by TECDATA ENGINEERING on 8/3/22.
//

import Foundation
import UIKit

protocol AppCoreCoordinatorProtocol {
    func initialViewController(window: UIWindow)
}

final class AppCoreCoordinator {
    var initiVC = UIViewController()
}

extension AppCoreCoordinator: AppCoreCoordinatorProtocol {
    func initialViewController(window: UIWindow) {
        self.initiVC = UnitTestCoordinator.navigation()
        window.rootViewController = self.initiVC
        window.makeKeyAndVisible()
    }
}
