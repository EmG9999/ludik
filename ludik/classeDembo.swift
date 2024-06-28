//
//  classeDembo.swift
//  ludik
//
//  Created by Apprenant 178 on 07/06/2024.
//

import SwiftUI

/// couleur de fond d'écran de l'application
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
  
    /** création d'un tableau qui va stocker chaque niveau en cohérence avec sa couleur
    
     */
    @State private var classes = [
        Classe (niveau: "CP",  couleur: .green),
        Classe(niveau: "CE1", couleur: .purple),
        Classe(niveau: "CE2", couleur: .blue),
        Classe(niveau: "CM1", couleur: .red),
        Classe(niveau: "CM2", couleur: .yellow)
    ]
    
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
                //Button CM1
                VStack{
                    
                    ForEach(classes) { classe in
                        Button(
                            action: {
                                // do something
                            },
                            label: { ZStack {
                                Rectangle()
                                    .frame(width: 120,height: 80)
                                    .foregroundColor(classe.couleur)
                                    .cornerRadius(20)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(.gray, lineWidth: 3))
                                Text("\(classe.niveau)")
                                    .font(.custom("Ranchers-Regular", size: 70))
                                .foregroundColor(.white)}
                            }
                        )
                        .padding(.trailing,10)
                    }
 
                }
                
            }
            .padding(.bottom, 100)
        }
    }
}

#Preview {
    Frame3Matiere()
}
