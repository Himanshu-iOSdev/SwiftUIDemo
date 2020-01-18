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
    UserInfo(name : "Deepak", position : "iOS Developer",imageName : "himanshu", isCEO : false),
    UserInfo(name : "Varun", position : "iOS Developer",imageName : "himanshu", isCEO : true),
    UserInfo(name : "Pavneesh", position : "iOS Developer",imageName : "himanshu", isCEO : false),
    UserInfo(name : "Shashank", position : "Backend Developer",imageName : "himanshu", isCEO : false),
    UserInfo(name : "Nisha", position : "Android Developer",imageName : "user", isCEO : true),
    UserInfo(name : "Rishav", position : "UI Designer",imageName : "himanshu", isCEO : false),
    UserInfo(name : "Abhishek", position : "Backend Developer",imageName : "himanshu", isCEO : true),
    UserInfo(name : "Dharmesh", position : "Web Developer",imageName : "himanshu", isCEO : false),
    
]
#endif
