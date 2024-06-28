//
//  profilMain.swift
//  ludik
//
//  Created by Apprenant 165 on 07/06/2024.
//

import SwiftUI

/// structure qui cree les caracteristiques du profile
struct profile {
    /// pseudo de l'utilisateur
    var pseudo: String
    /// niveau d'experience dans le jeu
    var niveau: Int
    /// avatar de l'utilisateur
    var avatar: String
    /// tout les badges qu'e l'utilisateur a gagné
    var badges: [Badge]
    
   
}
/// structure qui cree les badges
struct Badge: Identifiable {
    /// numero d'identifiction de chaque badge
    var id = UUID()
    /// le numero de badge qui correspond a l'asset
    var number: String
    /// variable pour appeler les asset badge
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
