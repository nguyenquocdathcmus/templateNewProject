//
//  Networkable.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import Moya
import RxSwift

protocol Networkable {
    var provider: MoyaProvider<MovieDbApi> { get }
    
     func getSample(from page: Int) -> Observable<Result<PagedResponse<SampleApi>>>
}

