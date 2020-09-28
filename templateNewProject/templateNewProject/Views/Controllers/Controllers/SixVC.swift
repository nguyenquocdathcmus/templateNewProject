//
//  SixVC.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/25.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa


class SixVC: UIViewController, Storyboarded {
    var viewModel: SixViewModel?
        weak var coordinator: SixVCCoordinator?
        
        fileprivate var refreshCtrl =  UIRefreshControl()
        fileprivate let disposeBag = DisposeBag()
}

