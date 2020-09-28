//
//  SampleRealm.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import Realm
import RealmSwift

class SampleRealm: Object {
    
    // Initialization
    convenience init(from: Sample) {
        self.init()
        self.id = from.id
        self.title = from.title
        
        
    }
    
    // Properties
    @objc dynamic var id: Int = 0
    @objc dynamic var title: String = ""
    
    // Primary key
    override static func primaryKey() -> String? {
        return "id"
    }
    
    // Functions
    func convert() -> Sample {
        return Sample(id: self.id,
                     title: self.title
                     )
    }
    
}

