//
//  menuConnexionSoso.swift
//  ludik
//
//  Created by Apprenant 178 on 06/06/2024.
//

import SwiftUI

struct menuConnexionSoso: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.backHomeOrange, .backHomeRed], startPoint: .center, endPoint: .bottomLeading)
                .ignoresSafeArea()
            
            VStack{
                Image("animateur CO")
                    .resizable()
                    .frame(width: 230, height: 370)
                
                
               
                    Text("CONNEXION")
                        .font(.custom("Ranchers-Regular", size: 40))
                        .shadow(color: .black, radius: 5, x: 5, y: 5)
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [.backHomeOrange, .backHomeRed]), startPoint: .leading, endPoint: .trailing)
                                .frame(width: 320)
                                .border(Color.black)
                                .cornerRadius(15)
                                .shadow(color: .red, radius: 5, x: 5, y: 5)
                            )
                
                  Text("OU")
                    .bold()
                    .font(.custom("Ranchers-Regular", size: 40))
                
                
                Text("Créer un compte")
                    .font(.custom("Ranchers-Regular", size: 30))
                    .shadow(color: .black, radius: 5, x: 5, y: 5)
                    .padding()
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.green, .gray]), startPoint: .center, endPoint: .topTrailing)
                            .frame(width: 320)
                            .border(Color.gray)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 5, x: 2, y: 3))
                    
                    
                    
                
            }
            
        }
        
    }
    
}

#Preview {
    menuConnexionSoso()
}
