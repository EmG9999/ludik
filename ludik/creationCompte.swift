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
    @State private var mailInput = ""
    @State private var identifInput = ""
    @State private var mdpInput = ""
    @State private var confMdpInput = ""

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
                        .position(x:130, y: 55)
                    TextField("Mail :", text: $mailInput)
                        .font(.custom("Ranchers", fixedSize: 18))
                        .foregroundStyle(.white)
                        .padding()
                     
                        
                    }

                ZStack {
                    Image("Rectangle 61")
                        .position(x:130, y: 55)
                    TextField("Identifiant :", text: $identifInput)
                        .font(.custom("Ranchers", fixedSize: 18))
                        .foregroundStyle(.white)
                        .padding()
                }
                ZStack {
                    Image("Rectangle 61")
                        .position(x: 130,y: 55)
                    TextField("Mot de passe :", text: $mdpInput)
                        .font(.custom("Ranchers", fixedSize: 18))
                        .foregroundStyle(.white)
                        .padding()
                }
                ZStack {
                    Image("Rectangle 66")
                        .position(x: 162, y: 55)
                    TextField("Confirmer mot de passe :", text: $confMdpInput)
                        .font(.custom("Ranchers", fixedSize: 18))
                        .foregroundStyle(.white)
                        .padding()
                }
                ZStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
                    })
                   
                    
                }
            }.position(x:195, y : 400)
          }
        }
      }

#Preview {
    connexion()
}
