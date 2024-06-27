//
//  profil.swift
//  ludik
//
//  Created by Apprenant 165 on 04/06/2024.
//

import SwiftUI
struct profile {
    var pseudo: String
    var niveau: Int
    var avatar: String
    var badges: [Badge]
    
   
}
struct Badge: Identifiable {
    var id = UUID()
    var number: String
    
    var image : String{
        return "Badge_"+number
    }
   
}


struct profil: View {
    
    let user = profile(pseudo: "DEMPASO", niveau: 35, avatar: "GABI 1",
                       badges : [
                        Badge(number: "01"),
                        Badge(number: "04"),
                        Badge(number: "06"),
                        Badge(number: "09")
         ]
                       )
    
    private let startColor: Color = .orange
    private let endColor: Color = .red
    
    var body: some View {
        ZStack {
            
        LinearGradient(colors: [startColor, endColor], startPoint: .center, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            VStack {
                
                Text(user.pseudo)
                    .font(.custom("Ranchers-Regular", fixedSize: 30))
                    
                ZStack {
                    
                    Circle()
                        .frame(height: 250)
                        .foregroundStyle(.white)
                    Image(user.avatar)
                }
    
                Text("LVL \(user.niveau)")
                    .font(.custom("Ranchers", fixedSize: 30))
                    
                
                
                ZStack {
              RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 370, height: 30)
                    .foregroundStyle(.white)
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .position(x: 115, y: 15)
                        .frame(width:300, height: 30)
                        .foregroundStyle(.yellow)
                }
                Spacer()
                Text("BADGES")
                    .font(.custom("Ranchers-Regular", size: 30.0))
                HStack {
                    
                ForEach(user.badges) { badge in
                    Image(badge.image)
                    }
                   
                }
                Spacer()
            }
        }
    }
}

#Preview {
    profil()
}
