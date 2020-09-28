//
//  DBManager.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import RealmSwift

class DBManager: DBProtocol {
    
    // defines if movie has added into database
    func hasAdded(by primaryKey: Int) -> Bool {
        guard let realm = try? Realm() else { return false }
        if realm.object(ofType: SampleRealm.self, forPrimaryKey: primaryKey) != nil {
            return true
        } else {
            return false
        }
    }
    
    // fetch movie from database
    func fetch() -> Results<SampleRealm>? {
        guard let realm = try? Realm() else { return nil }
        let movieResults = realm.objects(SampleRealm.self)
        return movieResults
    }
    
    // create movie realm object & add it to database
    func create(sample: Sample) {
        guard let realm = try? Realm() else { return }
        let movieRealm = SampleRealm(from: sample)
        if realm.object(ofType: SampleRealm.self,
                        forPrimaryKey: movieRealm.id) == nil {
            do {
                try realm.write { realm.add(movieRealm, update: .all) }
            } catch {
                print("Realm add movie error")
            }
        }
    }
    
    // delete movie from database by primary key
    func delete(primaryKey: Int) {
        guard let realm = try? Realm(),
            let sampleRealm = realm.object(ofType: SampleRealm.self, forPrimaryKey: primaryKey)
            else { return }
        do {
            try realm.write {
                realm.delete(sampleRealm)
            }
        } catch {
            print("Realm delete movie error")
        }
    }
    
}

