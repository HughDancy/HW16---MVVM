//
//  ObservableObject.swift
//  HW16
//
//  Created by Борис Киселев on 21.09.2022.
//

import Foundation

final class ObservableObject<T> {
    
    var value: T? {
        didSet {
            listner?(value)
        }
    }
    
    private var listner: ((T?) -> Void)?
    
    
    init(_ value: T?) {
        self.value = value
    }
    
    func bind(_ listner: @escaping(T?) -> Void) {
        listner(value)
        self.listner = listner
    }
}
