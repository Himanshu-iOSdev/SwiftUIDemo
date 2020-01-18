//
//  UserDetailView.swift
//  SwiftUI Demo
//
//  Created by Himanshu Kesharwani on 02/01/20.
//  Copyright © 2020 Himanshu Kesharwani. All rights reserved.
//

import SwiftUI

struct UserDetailView: View {
  var userInformation : UserInfo
  @State private var zoomed : Bool = false
  var body: some View {
    
    ZStack(alignment: .topLeading) {
      
      VStack {
        Text("Position : \(userInformation.position)" ).bold()
        Image(userInformation.imageName)
          .resizable()
          .aspectRatio(contentMode: zoomed ? .fill : .fit)
          .cornerRadius(8.0)
          .navigationBarTitle(Text(userInformation.name), displayMode: .inline)
          .onTapGesture {
            withAnimation(.easeInOut(duration: 1.0)) {self.zoomed.toggle()}
        }
      }
        //MARK:set frame width
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      
      //MARK: to disable star image when tapped in image
      if userInformation.isCEO && !zoomed{
        Image("star").resizable()
          .frame(width: 48.0, height: 36.0)
          .font(.title)
          .padding(.all)
          .transition(.move(edge: .leading))
      }
     
      
    }

  }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        NavigationView{UserDetailView(userInformation: testData[0])}
        //NavigationView{UserDetailView(userInformation: testData[1])}
      }
    }
}
