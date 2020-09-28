//
//  MovieDbApi.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import Moya

enum MovieDbApi {
    case getSample(page: Int)

}

extension MovieDbApi: TargetType {
    
    var baseURL: URL { return URL(string: "https://")! }
    var apiKey: String { return ""}
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    
    var path: String {
        switch self {
        case .getSample: return "/sample"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getSample: return .get
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        return URLEncoding.default
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
            case .getSample(let page): return .requestParameters(parameters: ["api_key": apiKey, "page": page], encoding: URLEncoding.queryString)
        }
    }

}

