//
//  ContentView.swift
//  SwiftUI Demo
//
//  Created by Himanshu Kesharwani on 30/12/19.
//  Copyright © 2019 Himanshu Kesharwani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var userInfos : [UserInfo] = []
    
    var body: some View {
      NavigationView {
        List {
          //MARK: section for button
          Section {
            Button(action: self.addButn) {
              Text("Add Employe")
            }
          }
          //MARK: Section for List
          Section {
            ForEach(userInfos) { info in
              //MARK: Create Seperate View For Cell:
              UserInfoCell(info : info)
            }
              
              //MARK: perform deleteCell operation
            .onDelete(perform: self.delete)
              //.onMove(perform: move)
          }
          
        }
          
        .navigationBarTitle("User Profiles")
        .navigationBarItems(trailing: EditButton())
        .listStyle(GroupedListStyle())
      }
    }
  
  func addButn() {
    print("Add Button Clicked")
  }
  
   func delete(rowIndex : IndexSet) {
    print("Remove Button Clicked")
    //self.userInfos.remove(atOffsets: rowIndex)
  }
  
  func move(fromIndex : IndexSet, toIndex : IndexSet) {
   // self.userInfos.move(fromOffsets: fromIndex, toOffset: toIndex)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(userInfos : testData )
    }
}

//MARK: View For Cell
struct UserInfoCell: View {
  var info : UserInfo
  
  var body: some View {
    NavigationLink(destination: UserDetailView(userInformation: info)) {
      Image(info.imageName).cornerRadius(4.0)
      
      VStack(alignment: .leading) {
        Text(info.name)
          .font(.headline)
        Text(info.position)
          .font(.subheadline)
          .foregroundColor(.secondary)
        
      }
    }
  }
}
