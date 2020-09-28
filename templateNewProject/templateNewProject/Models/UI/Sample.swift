//
//  Sample.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

struct Sample: Equatable {
    
    var id: Int
    var title: String
    
    static func ==(lhs: Sample, rhs: Sample) -> Bool {
        return lhs.id == rhs.id
    }
    
}

