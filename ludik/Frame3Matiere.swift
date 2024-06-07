//
//  Frame3Matiere.swift
//  ludik
//
//  Created by Apprenant 123 on 05/06/2024.
//

import SwiftUI

extension Color{
    // Couleurs fon écran appli
    static let fondEcranColor1 = Color(red: 255/255, green: 166/255, blue: 41/255)
    static let fondEcranColor2 = Color(red: 243/255, green: 74/255, blue: 85/255)
    static let francaisColor1 = Color(red: 240/255, green: 147/255, blue: 147/255)
    static let FrancaisColor2 = Color(red: 212/255, green: 34/255, blue: 34/255)
    static let geoColor1 = Color(red: 255/255, green: 205/255, blue: 176/255)
    static let geoColor2 = Color(red: 200/255, green: 120/255, blue: 0/255)
}

struct Frame3Matiere: View {
    var body: some View {
        ZStack {
            // Couleur fond d'écran
            LinearGradient(colors:[.fondEcranColor1, .fondEcranColor2], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    // Image de l'animateur
                    Image("AnimateurSolo")
                        .resizable()
                    .frame(width: 300, height: 300)
                    .padding(.top)
                    HStack {
                        //Button Fleche
                        Button(
                            action: {
                                // do something
                            },
                            label: {  Image("Fleche")
                                    .padding(.bottom, 40)
                                    .padding(.leading,10)}
                        )
                        //Barre de niveau
                        VStack {
                            Text("100%")
                                .foregroundColor(.white)
                                .font(.custom("Ranchers-Regular", size: 20))                                .padding(.leading,60)
                            Rectangle()
                                    .frame(width: 260,height: 13)
                                    .foregroundColor(.yellow)
                                    .cornerRadius(20)
                                    .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(.black, lineWidth: 2))
                                .padding(.leading,10)
                        }
                        //Button Profil
                        Button(
                            action: {
                                // do something
                            },
                            label: { ZStack {
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 55)
                                Image("GABI")
                                    .resizable()
                                .frame(width: 34, height: 43)
                            }
                            .padding(.bottom, 40)
                            .padding(.leading,2)}
                        )
                        

                    }
                    .padding(.bottom,200)

                }
                //Button Francais
                HStack{
                    Button(
                        action: {
                            // do something
                        },
                        label: { ZStack {
                            Rectangle()
                                .frame(width: 150,height: 100)
                                .foregroundColor(.red)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.gray, lineWidth: 3))
                            Text("Français")
                                .font(.custom("Ranchers-Regular", size: 40))
                            .foregroundColor(.white)}
                        }
                    )
                    .padding(.trailing,10)
                    //Button Géographie
                    Button(
                        action: {
                            // do something
                        },
                        label: { ZStack {
                            Rectangle()
                                .frame(width: 150,height: 100)
                                .foregroundColor(.yellow)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.gray, lineWidth: 3))
                            Text("Géographie")
                                .font(.custom("Ranchers-Regular", size: 30))
                                .foregroundColor(.white)}
                        }
                    )
                }
                HStack{
                    //Button Sciences
                    Button(
                        action: {
                            // do something
                        },
                        label: {ZStack {
                            Rectangle()
                                .frame(width: 140,height: 100)
                                .foregroundColor(.purple)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.gray, lineWidth: 3))
                            Text("Sciences")
                                .font(.custom("Ranchers-Regular", size: 40))
                            .foregroundColor(.white)}
                        }
                    )
                    .padding(.trailing,10)
                    //Button Maths
                    Button(
                        action: {
                            // do something
                        },
                        label: { ZStack {
                            Rectangle()
                                .frame(width: 140,height: 100)
                                .foregroundColor(.blue)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.gray, lineWidth: 3))
                            Text("Maths")
                                .font(.custom("Ranchers-Regular", size: 45))
                            .foregroundColor(.white)}
                        }
                    )
                    
                }
                //Button Histoire
                Button(
                    action: {
                        // do something
                    },
                    label: { ZStack {
                        Rectangle()
                            .frame(width: 140,height: 100)
                            .foregroundColor(.green)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.gray, lineWidth: 3))
                        Text("Histoire")
                            .font(.custom("Ranchers-Regular", size: 45))
                        .foregroundColor(.white)}
                    }
                )
                
            }
            .padding(.bottom, 100)
        }
    }
}

#Preview {
    Frame3Matiere()
}
