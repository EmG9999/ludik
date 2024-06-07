//
//  patriceJeuCommencer.swift
//  ludik
//
//  Created by Apprenant 178 on 07/06/2024.
//

import SwiftUI
import SwiftData

extension Color{
            // Couleurs Gradiant boutons de sélection de la bonne réponse
            static let buttonChoiceOrange1 = Color(red: 236/255, green: 144/255, blue: 5/255)
            static let buttonChoiceRed2 = Color(red: 228/255, green: 75/255, blue: 84/255)
            // Couleurs Gradiant boutons "commeneer"
            static let buttonOrange21
            = Color(red: 255/255, green: 171/255, blue: 0/255)
            static let buttonOrange31
            = Color(red: 153/255, green: 103/255, blue: 0/255)
        }
        
struct SelectJeuxQuizView: View {
            var body: some View {
                ZStack {
                    LinearGradient(colors:[.orange, .red], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                    VStack {
                    Text("Quiz des Lettres")
                        .font(.custom("Ranchers-Regular", size: 40))
                        .padding(.bottom, 70)
                        HStack {
                            VStack {
                                Text("Mots: 1/20")
                                Text("Score:10")
                            }.padding(.leading, 40)

                            Spacer()
                            
                            VStack {
                                Text("0:00")
                                Image("BoutonPause")
                            } .padding(.trailing, 50)
                        }
                        .font(.custom("Ranchers-Regular", size: 25))
                        Image("Hippopotamus")
                            .resizable()
                            .frame(width: 130, height: 130, alignment: .center)
                        // Titre des 3 bouttons
                        Text("Comment s'écrit ce mot ?")
                            .font(.custom("Ranchers-Regular", size: 25))
                            .padding(.bottom)
                        // 3 bouttons de la sélectinn de la bonne réponse
                        VStack {
                            Text("Hipopotame")
                                .frame(width: 267,height: 74)
                                .background(LinearGradient(
                                        colors: [.buttonChoiceOrange1, .buttonChoiceRed2],
                                        startPoint: .leading,
                                        endPoint: .trailing))
                                .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(.black, lineWidth: 2))
                                .background(.orange)
                                .cornerRadius(20)
                                .padding(.bottom)
                            Text("Hippopotame")
                                .frame(width: 267,height: 74)
                                .background(LinearGradient(
                                        colors: [.buttonChoiceOrange1, .buttonChoiceRed2],
                                        startPoint: .leading,
                                        endPoint: .trailing))
                                .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(.black, lineWidth: 2))
                                .background(.orange)
                                .cornerRadius(20)
                                .padding(.bottom, 20)
                            Text("Ippopotame")
                                .frame(width: 267,height: 74)
                                .background(LinearGradient(
                                        colors: [.buttonChoiceOrange1, .buttonChoiceRed2],
                                        startPoint: .leading,
                                        endPoint: .trailing))
                                .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(.black, lineWidth: 2))
                                .cornerRadius(20)
                                .padding(.bottom,20)
                        }
                        .font(.custom("Ranchers-Regular", size: 40))
                        .foregroundColor(.white)
                        .padding()
                        //Boutton "Commencer"
                           
                                    Text("Commencer")
                                        .frame(width: 327,height: 48)
                                        .background(LinearGradient(
                                            colors: [.buttonOrange21, .buttonOrange31],
                                            startPoint: .leading,
                                            endPoint: .trailing))
                                        .cornerRadius(80)
                                        .foregroundColor(.white)
                                        .font(.custom("Ranchers-Regular", size: 30))
                        }
                    .blur(radius: 14)
                    //Superposition du fond d'éran flou
                    VStack {
                        HStack {
                            Button(
                                action: {
                                    // do something
                                },
                                label: { Image("Fleche")
                                    }
                            )
                            .padding(.trailing,23)
                            Text("Quiz des Lettres")
                                .font(.custom("Ranchers-Regular", size: 40))
                                .padding(.trailing)
                        }
                        Button(
                            action: {
                                // do something
                            },
                            label: {Image("FlecheSlideHaut")
                                    .padding(.bottom,35)
                                   }
                        )
                        Button(
                            action: {
                                // do something
                            },
                            label: { ZStack {
                                Text("Commencer")
                                    .foregroundColor(.black)
                                    .font(.custom("Ranchers-Regular", size: 50))
                                    .frame(width: 281,height: 89)
                                    .background(LinearGradient(
                                            colors: [.buttonChoiceOrange1, .buttonChoiceRed2],
                                            startPoint: .leading,
                                            endPoint: .trailing))
                                    .cornerRadius(25)
                                    .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(.black, lineWidth: 5))
                            }}
                        )
                        VStack {
                            Text("record")
                                .font(.custom("Ranchers-Regular", size: 40))
                                .fontWeight(.black)
                            Text("Mots:  1/20")
                                .font(.custom("Ranchers-Regular", size: 25))
                            Text("Score:  10")
                                .font(.custom("Ranchers-Regular", size: 25))
                            Spacer()
                            Button(
                                action: {
                                    // do something
                                },
                                label: {
                                    ZStack {
                                    Image("house")
                                        .frame(width: 60,height: 60)
                                        .background(LinearGradient(
                                                colors: [.buttonChoiceOrange1, .buttonChoiceRed2],
                                                startPoint: .leading,
                                                endPoint: .trailing))
                                        .cornerRadius(25)
                                        .overlay(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .stroke(.black, lineWidth: 4))
                                }}
                            )
                            Spacer()
                            Button(
                                action: {
                                    // do something
                                },
                                label: {  Image("FlecheSlideBas")}
                            )
                            
                        }
                      
                    }
                    
                    }
                Spacer()
                }
                
            }
#Preview {
    SelectJeuxQuizView()
}
