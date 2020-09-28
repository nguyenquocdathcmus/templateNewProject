//
//  FourVC.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class FourVC: UIViewController, Storyboarded {
    var viewModel: FourViewModel?
    weak var coordinator: FourVCCoordinator?
    
    fileprivate var refreshCtrl =  UIRefreshControl()
    fileprivate let disposeBag = DisposeBag()
}
