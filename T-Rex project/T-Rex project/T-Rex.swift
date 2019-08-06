//
//  T-Rex.swift
//  T-Rex project
//
//  Created by Apple on 8/6/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
class Dinosaur {
    
    var age = 0
    var breed = ""
    var color = "lavender"
    
    init(dinosaurBreed : String,dinosaurAge : Int){
        breed = dinosaurBreed
        age = dinosaurAge
    }
    func eatFood(){
        print("The \(color) \(breed) is \(age) and likes to eat food")
    }
}

