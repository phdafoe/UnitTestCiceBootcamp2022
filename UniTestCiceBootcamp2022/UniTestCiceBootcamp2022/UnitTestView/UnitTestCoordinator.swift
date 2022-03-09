//
//  UnitTestCoordinator.swift
//  UniTestCiceBootcamp2022
//
//  Created by TECDATA ENGINEERING on 8/3/22.
//

import Foundation
import UIKit

final class UnitTestCoordinator {
    
    static func navigation() -> UINavigationController {
        let navVC = UINavigationController(rootViewController: self.view())
        navVC.navigationBar.isTranslucent = false
        return navVC
    }
    
    static func view() -> UIViewController {
       let vc = UnitTestViewController()
        vc.viewmodel = self.presenter()
        return vc
    }
    
    static func presenter() -> UnitTestPresenterInputProtocol {
        let presenter = UnitTestPresenter()
        return presenter
    }
}
