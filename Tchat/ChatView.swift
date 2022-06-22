//
//  ChatView.swift
//  Tchat
//
//  Created by Cindy Bajoni on 25/05/2022.
//

import SwiftUI

struct ChatView: View {
    
//    let names = users.name.self
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
        VStack(alignment: .leading) {
//            ZStack {
////                 HStack {
////                     Image(systemName: "magnifyingglass")
////                 }
////                 Rectangle()
////                     .foregroundColor(.gray)
////                     .frame(width: 300, height: 20)
//             }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .firstTextBaseline){

                ForEach(allUsers) { item in
                    NavigationLink(destination: {
                        FriendsProfiles(item: item)
                    }, label: {
                    VStack(spacing: 5) {

                        if item.isCurrentUser == false {
                        Image(item.avatar)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                        Text(item.name)
                            .foregroundColor(.accentColor)
                            .font(.caption)
                            .frame(width:80)
                            .multilineTextAlignment(.center)
                        } else {
                         }
                        }
                                       })
                    
                }
                    
            }
                
                .padding(.leading)
//                Spacer()
            }
//            Spacer()
//            Divider()

            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading) {
                ForEach(allUsers) { item in
                    HStack {
                        NavigationLink(destination: {
                            PagedeChat()
                        }, label: {
                        if item.isCurrentUser == false {

                        Image(item.avatar)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .foregroundColor(.accentColor)
                                Text("Culpa coalitos illas praefectis omni graviter homines pro saltem innocentium.")
                                    .font(.caption)
                                    .fontWeight(.thin)
                                    .foregroundColor(.gray)
                                
                                
                            }
                            Image(systemName: "camera.circle")
                                .font(.system(size:25))
                                .foregroundColor(.gray)
//                                .padding(.trailing)
                        } else {
                        }

                        })
                    }
                    Divider()
                    
                    .padding(.leading)
                    
                    Spacer()
                }
            }
                .padding(.leading)
            }
//            Spacer()
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
            
            .navigationBarTitle("")
            .toolbar {
                VStack(alignment: .leading) {
//                    Spacer()
                    HStack{
                        Spacer()
                        Text("Mes amis")
                            .font(.system(size: 40))
                            .foregroundColor(.gray)
                            .shadow(radius: 5)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image(actualUser.avatar)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                                .shadow(color: .accentColor, radius: 6)
                                .padding(5)
                                .background(Color.white)
                                .clipShape(Circle())
                        })
                    }

                }
                .padding(.bottom,50)
                .padding(.top)

            }
                    }
                }
    }
//    var searchResults: [String] {
//                    if searchText.isEmpty {
//                        return users.self
//                    } else {
//                        return users { $0.contains(searchText) }
//                    }
//    }
        }
    


struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
