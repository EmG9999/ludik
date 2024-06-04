//
//  connexion.swift
//  ludik
//
//  Created by Apprenant 165 on 04/06/2024.
//

import SwiftUI

struct connexion: View {
    
    private let startColor: Color = .orange
    private let endColor: Color = .red

    var body: some View {
        ZStack {
        LinearGradient(colors: [startColor, endColor], startPoint: .center, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
       
            
        Image("GABI 2")
                .position(x: 82, y: 200)
            
            VStack(spacing: 45) {
                ZStack {
                    
                Image("Rectangle 63")
                Text("Création de compte")
                    .padding(.bottom)
                        .font(.custom("Ranchers", fixedSize: 23))
                            .foregroundStyle(.white)
              }
                ZStack {
                    Image("Rectangle 61")
                    Text("Mail:                                                                       ")
                        
                        .padding(.bottom)
                            .font(.custom("Ranchers", fixedSize: 23))
                                .foregroundStyle(.white)
                }
                ZStack {
                    Image("Rectangle 61")
                    Text("Identifiant:                                                  ")
                        
                        .padding(.bottom)
                            .font(.custom("Ranchers", fixedSize: 23))
                                .foregroundStyle(.white)
                }
                ZStack {
                    Image("Rectangle 61")
                    Text("Mot de Passe:                                          ")
                        
                        .padding(.bottom)
                            .font(.custom("Ranchers", fixedSize: 23))
                                .foregroundStyle(.white)
                }
                ZStack {
                    Image("Rectangle 66")
                    Text("Confirmer mot de passe:                                  ")
                        
                        .padding(.bottom)
                            .font(.custom("Ranchers", fixedSize: 23))
                                .foregroundStyle(.white)
                }
                ZStack {
                    Image("Rectangle 2")
                    VStack(spacing: -20) {
                       
                        Text("Creation")
                            .padding(.bottom)
                                .font(.custom("Ranchers", fixedSize: 30))
                                    .foregroundStyle(.white)
                        
                        Text("De")
                            .padding(.bottom)
                                .font(.custom("Ranchers", fixedSize: 25))
                                    .foregroundStyle(.white)
                        Text("Compte")
                            .padding(.bottom)
                                .font(.custom("Ranchers", fixedSize: 30))
                                    .foregroundStyle(.white)
                    }
                    
                }
            }
          }
        }
      }

#Preview {
    connexion()
}
