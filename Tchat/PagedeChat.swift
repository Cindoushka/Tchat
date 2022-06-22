//
//  PagedeChat.swift
//  Tchat
//
//  Created by Cindy Bajoni on 26/05/2022.
//

import SwiftUI

struct PagedeChat: View {
    @State private var moving = false
    
    var body: some View {
        
        ZStack {
             
           
             Circle()  // Three
                 .stroke(lineWidth: 5)
                 .frame(width: 80, height: 80)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 80 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.1), value: moving)
             
             Circle()  // Four
                 .stroke(lineWidth: 5)
                 .frame(width: 110, height: 110)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 80 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.15), value: moving)
             
             Circle()  // Five
                 .stroke(lineWidth: 5)
                 .frame(width: 140, height: 140)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 80 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.2), value: moving)
             
             Circle()  // Six
                 .stroke(lineWidth: 5)
                 .frame(width: 170, height: 170)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 80 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.25), value: moving)
             
            Text("La page de Chat est en cours de construction...")
                .font(.system(size: 30))
                .padding()
                .foregroundColor(.accentColor)

         }
         .onAppear{
             moving.toggle()
         }
     }


}
    

struct PagedeChat_Previews: PreviewProvider {
    static var previews: some View {
        PagedeChat()
    }
}
