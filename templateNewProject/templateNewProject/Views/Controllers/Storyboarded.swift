//
//  Storyboarded.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate(sbName: String) -> Self
}

extension Storyboarded where Self: UIViewController {
    
    static func instantiate(sbName: String) -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: sbName, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
    
}
