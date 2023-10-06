//
//  Instructor.swift
//  RetainCycleExplanation
//
//  Created by Onur Bulut on 6.10.2023.
//

import Foundation
class WeakInstructor {
    let name: String
   weak var course : WeakCourse?
    
    init(name: String) {
        self.name = name
    }
    
    
    deinit {
        print("WeakInstructor \(name) deinitialized")
    }
    
}



class WeakCourse {
    
    let name : String
    let url : URL
    weak var insturctor : WeakInstructor?
    
    init(name: String, url: URL) {
        self.name = name
        self.url = url
    }
    
    deinit {
        print("WeakCourse \(name) deinitialized")

    }
    
}
