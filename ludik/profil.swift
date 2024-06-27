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
    var badge: badges
}
struct badges {
    var badge1 = "Badge_01"
    var badge2 = "Badge_02"
    var badge3 = "Badge_03"
    var badge4 = "Badge_04"
    var badge5 = "Badge_05"
    var badge6 = "Badge_06"
    var badge7 = "Badge_07"
    var badge8 = "Badge_08"
    var badge9 = "Badge_09"
}
struct profil: View {
    let user = profile(pseudo: "DEMPASO", niveau: 35, avatar: "GABI 1", badge: badges())
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
                VStack {
                    HStack {
                        Image(user.badge.badge1)
                        Image(user.badge.badge2)
                        Image(user.badge.badge3)
                        Image(user.badge.badge4)
                    }
                    HStack {
                        Image(user.badge.badge5)
                        Image(user.badge.badge6)
                        Image(user.badge.badge7)
                        Image(user.badge.badge8)
                    }
                    Image(user.badge.badge9)
                }
            }
        }
    }
}

#Preview {
    profil()
}
