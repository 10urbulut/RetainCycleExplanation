//
//  Instructor.swift
//  RetainCycleExplanation
//
//  Created by Onur Bulut on 6.10.2023.
//

import Foundation
class Instructor {
    let name: String
    var course : Course?
    
    init(name: String) {
        self.name = name
    }
    
    
    deinit {
        print("Instructor \(name) deinitialized")
    }
    
}



class Course {
    
    let name : String
    let url : URL
    var insturctor : Instructor?
    
    init(name: String, url: URL) {
        self.name = name
        self.url = url
    }
    
    deinit {
        print("Course \(name) deinitialized")

    }
    
}
