//
//  FriendsProfiles.swift
//  Tchat
//
//  Created by Cindy Bajoni on 26/05/2022.
//

import SwiftUI

struct FriendsProfiles: View {
    
    var item: User
    
    var body: some View {
        VStack {
            
            Image(item.avatar)
                .resizable()
                .scaledToFill()
                .frame(width: 175, height: 175, alignment: .center)
                .clipShape(Circle())
                .shadow(color: .accentColor, radius: 6)
                .padding(5)
                .background(Color.white)
                .clipShape(Circle())
            
            Text(item.name)
                .font(.title)
                .foregroundColor(.accentColor)
            
            ZStack {
                Rectangle()
                    .foregroundColor(Color("lightgray"))
                    .cornerRadius(20)
                    .frame(width: 330, height: 100, alignment: .center)
                HStack {
                    Image(systemName: "message.fill")
                        .font(.system(size: 30))
                        .padding()
                    
                    Divider().frame(maxHeight: 80)

                    Image(systemName: "phone.fill")
                        .font(.system(size: 30))
                        .padding(30)
                    
                    Divider().frame(maxHeight: 80)
                    
                    Image(systemName: "video.fill")
                        .font(.system(size: 30))
                        .padding()
                    

                    

                }
                
            }
            
//            Text("Sent photos")
        }
    }
}

struct FriendsProfiles_Previews: PreviewProvider {
    static var previews: some View {
        FriendsProfiles(item: user1)
    }
}
