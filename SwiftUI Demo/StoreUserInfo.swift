//
//  StoreUserInfo.swift
//  SwiftUI Demo
//
//  Created by Himanshu Kesharwani on 02/01/20.
//  Copyright © 2020 Himanshu Kesharwani. All rights reserved.
//

import SwiftUI
import Combine
import Foundation

class StoreUserInfo  {
  let didset = PassthroughSubject<Void, Never>()
  var empInfo : [UserInfo] {
    didSet {
        didset.send()
    }
  }
  
  init(empInfo : [UserInfo] = []) {
    self.empInfo = empInfo
  }
  
  
}
