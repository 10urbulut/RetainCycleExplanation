//
//  WeakSelfExamples.swift
//  RetainCycleExplanation
//
//  Created by Onur Bulut on 6.10.2023.
//

import Foundation


struct LaunchedCourse {
    
    let title : String
    var isLaunched : Bool = false
    
    init(title: String) {
        self.title = title
    }
    
    
    
}


class WeakInstructor2 {
    let name: String
   weak var course : WeakCourse2?
    
    init(name: String) {
        self.name = name
    }
    
    
    deinit {
        print("WeakInstructor2 \(name) deinitialized")
    }
    
}



class WeakCourse2 {
    
    let name : String
    let url : URL
    weak var insturctor : WeakInstructor2?
    var launchedCourses : [LaunchedCourse] = []
    
    var onLaunched : ((_ launchedCourse : LaunchedCourse) -> Void)?
    
    func launch(launchedCourse: LaunchedCourse) {
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.onLaunched?(launchedCourse)
        }
        
    }
    
    init(name: String, url: URL) {
        self.name = name
        self.url = url
        
        onLaunched = {[weak self] launchedCourse in
            self?.launchedCourses.append(launchedCourse)
            print("Launched course count: \(self?.launchedCourses.count)")

        }
    }
    
    deinit {
        print("WeakCourse2 \(name) deinitialized")

    }
    
}
