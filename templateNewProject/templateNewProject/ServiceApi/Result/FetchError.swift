//
//  FetchError.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/23.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

enum FetchError: Error {
    case requestError(value: RequestError)
    case parseError
    case malformedRequest
}

