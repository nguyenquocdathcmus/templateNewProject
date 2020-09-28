//
//  Messagable.swift
//  templateNewProject
//
//  Created by nguyenquocdathcmus on 2020/09/24.
//  Copyright © 2020 nguyenquocdat.hcmus@gmail.com. All rights reserved.
//

import RxSwift

protocol Messagable {
    var errorMessages: PublishSubject<String> { get }
}

extension Messagable {
    
    func sendErrorMessage(text: String, name: String, error: Error) {
        self.errorMessages.onNext(text)
        print("\(name) ERROR: \(error.localizedDescription)")
    }
    
}

