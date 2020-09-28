//
//  FourViewModel.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/25.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import RxSwift
import RxCocoa

class FourViewModel: Messagable {
    
       var fetchedMovies = BehaviorRelay(value: [Sample]())
       let fetchingMoviesType = BehaviorRelay(value: 0)
       let shouldLoadNextPage = BehaviorRelay(value: false)
       var stopRefreshing = BehaviorRelay(value: false)
       var errorMessages = PublishSubject<String>()
       
       fileprivate let networkManager: Networkable?
       fileprivate let disposeBag = DisposeBag()
       fileprivate var currentPage = 1
       fileprivate var shouldShowLoadingNextPage = false
       
       // MARK - Initializer
       init() {
           self.networkManager = NetworkManager()

       }
}
