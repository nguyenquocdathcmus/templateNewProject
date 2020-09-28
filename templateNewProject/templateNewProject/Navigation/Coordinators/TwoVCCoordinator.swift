//
//  TwoVCCoordinator.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import UIKit

class TwoVCCoordinator: NSObject, Coordinator,
UINavigationControllerDelegate {
    
    fileprivate var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        navigationController.navigationBar.prefersLargeTitles = true
        let vc = TwoVC.instantiate(sbName: Utils.TWO_SB)
        vc.viewModel = TwoViewModel()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
   
    
    // UINavigationControllerDelegate
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from)
            else { return }
        if navigationController.viewControllers.contains(fromViewController) { return }
        if let movieOverviewVC = fromViewController as? TwoVC,
            let coordinator = movieOverviewVC.coordinator {
            childDidFinish(coordinator)
        }
    }
    
}


