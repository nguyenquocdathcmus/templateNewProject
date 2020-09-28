//
//  NetworkManager.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import Moya
import RxSwift
import Alamofire

struct NetworkManager: Networkable {

    var provider = MoyaProvider<MovieDbApi>(plugins: [NetworkLoggerPlugin(verbose: true)])
    
    func getSample(from page: Int) -> Observable<Result<PagedResponse<SampleApi>>> {
        return provider.rx.request(.getSample(page: page))
            .asObservable()
            .map { response -> Result<PagedResponse<SampleApi>> in
                return self.handleResponse(type: PagedResponse<SampleApi>.self, from: response)
            }
    }
    
    func handleResponse<T: Decodable>(type: T.Type, from response: Response) -> Result<T>  {
        switch response.statusCode {
            case 200...299:
                do {
                    let model = try JSONDecoder().decode(T.self, from: response.data)
                    return .success(model)
                } catch {
                    return .error(FetchError.parseError)
                }
            case 300...399: return .error(FetchError.requestError(value: .reqErr300s))
            case 400: return .error(FetchError.requestError(value: .reqErr400))
            case 401: return .error(FetchError.requestError(value: .reqErr401))
            case 404: return .error(FetchError.requestError(value: .reqErr404))
            case 500...599: return .error(FetchError.requestError(value: .reqErr500s))
            default : return .error(FetchError.requestError(value: .reqErrUnknown))
        }
    }
    
}
