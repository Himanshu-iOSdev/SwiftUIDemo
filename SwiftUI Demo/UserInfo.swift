//
//  ContentFile.swift
//  SwiftUI Demo
//
//  Created by Himanshu Kesharwani on 30/12/19.
//  Copyright © 2019 Himanshu Kesharwani. All rights reserved.
//

import SwiftUI

struct UserInfo : Identifiable {
    var id = UUID()
    var name : String
    var position : String
    var imageName : String
    var isCEO : Bool
  init(name : String,position : String, imageName : String,isCEO : Bool ) {
    self.name = name
    self.position = position
    self.imageName = imageName
    self.isCEO = isCEO
  }
}

#if DEBUG
let testData = [
    UserInfo(name : "Himanshu", position : "iOS Developer", imageName : "himanshu", isCEO : true),
    UserInfo(name : "Deepak", position : "iOS Developer",imageName : "user", isCEO : false),
    UserInfo(name : "Varun", position : "iOS Developer",imageName : "himanshu", isCEO : true),
    UserInfo(name : "Shashank", position : "iOS Developer",imageName : "user", isCEO : false),
    UserInfo(name : "Nisha", position : "iOS Developer",imageName : "himanshu", isCEO : true),
    UserInfo(name : "Rishav", position : "iOS Developer",imageName : "user", isCEO : false),
    UserInfo(name : "Abhishek", position : "iOS Developer",imageName : "himanshu", isCEO : true),
    UserInfo(name : "Dharmesh", position : "iOS Developer",imageName : "himanshu", isCEO : false),
    
]
#endif
