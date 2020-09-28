//
//  ThreeVC.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class ThreeVC: UIViewController, Storyboarded {
    var viewModel: ThreeViewModel?
    weak var coordinator: ThreeVCCoordinator?
    
    fileprivate var refreshCtrl =  UIRefreshControl()
    fileprivate let disposeBag = DisposeBag()
}
