//
//  FiveVC.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class FiveVC: UIViewController, Storyboarded {
    var viewModel: FiveViewModel?
     weak var coordinator: FiveVCCoordinator?
     
     fileprivate var refreshCtrl =  UIRefreshControl()
     fileprivate let disposeBag = DisposeBag()
}
