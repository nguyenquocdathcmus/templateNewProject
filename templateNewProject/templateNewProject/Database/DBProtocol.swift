//
//  DBProtocol.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import RealmSwift

protocol DBProtocol {
    func hasAdded(by primaryKey: Int) -> Bool
    func fetch() -> Results<SampleRealm>?
    func create(sample: Sample)
    func delete(primaryKey: Int)
}

