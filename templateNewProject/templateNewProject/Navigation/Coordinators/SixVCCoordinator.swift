//
//  SixVCCoordinator.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/25.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import UIKit
class SixVCCoordinator: NSObject, Coordinator,
UINavigationControllerDelegate {
    
      weak var parentCoordinator: Coordinator?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        navigationController.navigationBar.prefersLargeTitles = true
        let vc = SixVC.instantiate(sbName: Utils.ONE_SB)
        vc.viewModel = SixViewModel()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    
}
