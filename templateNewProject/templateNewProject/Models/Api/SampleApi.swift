//
//  SampleApi.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

struct SampleApi: Decodable {
    
    var id: Int = 0
    var title: String = ""

    
    private enum CodingKeys: String, CodingKey {
        case id
        case title

    }
    
    init(from decoder: Decoder) throws {
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
        do { self.id = try valueContainer.decode(Int.self, forKey: .id) } catch { print("json decode err: movie id") }
        do { self.title = try valueContainer.decode(String.self, forKey: .title) } catch { print("json decode err: title") }
        
    }
    
    func convert() -> Sample {
        return Sample(id: self.id,
                     title: self.title
        )
    }
    
}

