//
//  Coordinator.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/23.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    func start()
}

extension Coordinator {
    var childCoordinators: [Coordinator] { get {return [] } set{} }
    
    func childDidFinish(_ child: Coordinator) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
}
