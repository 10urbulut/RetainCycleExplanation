//
//  ViewController.swift
//  RetainCycleExplanation
//
//  Created by Onur Bulut on 6.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    /*    var course : Course? = Course(name: "IOS Course", url: URL(string: "www.onurbulut.dev")!)
        var instructor : Instructor? = Instructor(name: "Onur Bulut")
        
        
        course?.insturctor = instructor
        instructor?.course = course

        
        course = nil
        instructor = nil*/
        
        
       /* var course : WeakCourse? = WeakCourse(name: "IOS Course", url: URL(string: "www.onurbulut.dev")!)
          var instructor : WeakInstructor? = WeakInstructor(name: "Onur Bulut")
          
          
          course?.insturctor = instructor
          instructor?.course = course

          
          course = nil
          instructor = nil*/
        
        
        
        
        var course : WeakCourse2? = WeakCourse2(name: "IOS Course", url: URL(string: "www.onurbulut.dev")!)
          var instructor : WeakInstructor2? = WeakInstructor2(name: "Onur Bulut")
          
          
          course?.insturctor = instructor
          instructor?.course = course

        course?.launch(launchedCourse: LaunchedCourse(title: "IOS"))
        
          course = nil
          instructor = nil
    }


}

