//
//  RootMenuTC.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import UIKit
class RootMenuTC: UITabBarController {
    
    let  oneCoord = OneVCCoordinator(navigationController: UINavigationController())
    let twoCoord = TwoVCCoordinator(navigationController: UINavigationController())
    let threeCoord = ThreeVCCoordinator(navigationController: UINavigationController())
    let fourCoord = FourVCCoordinator(navigationController: UINavigationController())
    let fiveCoord = FiveVCCoordinator(navigationController: UINavigationController())
    fileprivate let centralTabBarItemIndex = 2
    
    
    // UITabBarController
    override func viewDidLoad() {
        super.viewDidLoad()
        setUserInterface()
    }
    
    // Set user interface
    fileprivate func setUserInterface() {
        setItemViewControllers()
        setMiddleButton()
        setCurrentTheme()
    }
    
    fileprivate func setItemViewControllers() {
        [oneCoord, twoCoord,
         threeCoord, fourCoord, fiveCoord]
            .forEach( { ($0 as! Coordinator).start()})
        
        viewControllers = [
            oneCoord.navigationController,
            twoCoord.navigationController,
            threeCoord.navigationController,
            fourCoord.navigationController,
            fiveCoord.navigationController
        ]
    }
    
    fileprivate func setMiddleButton() {
        //setupMiddleButton()
        selectedIndex = centralTabBarItemIndex
    }
    
    fileprivate func setCurrentTheme() {
//        let currTheme = ThemeManager.currentTheme()
//        ThemeManager.applyTheme(theme: currTheme)
    }
    
}

