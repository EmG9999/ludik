//
//  gameSosooo.swift
//  ludik
//
//  Created by Apprenant 178 on 07/06/2024.
//

import SwiftUI




struct gameSosooo: View {
    @State private var choixNombre = ""
    @State private var correctIncorrect = ""
    @State var pointUtil = 0
    
    
    let nombrAleatoire = Int.random(in: 1...50)
    
    
    
    
    var body: some View {
    ZStack{
            LinearGradient(colors: [.backBlue, .backBlue2], startPoint: .top, endPoint: .topTrailing)
                .ignoresSafeArea()
            
    VStack {
        ZStack{
                Image("ImageJeuSoso")
                        .resizable()
                        .frame(width: 400.0, height: 280.0)
                        .ignoresSafeArea()
                    
                Text("Trouve le nombre")
                        .font(.custom("Ranchers-Regular", size: 55))
                        .foregroundStyle(
                            LinearGradient(gradient: Gradient(colors: [.bubbleGumPink, .bubbleGumYellow]), startPoint: .topTrailing, endPoint: .bottom))
                        .padding(.top, 130)
                }
                
                
                
        VStack{
            
            
            Text("\(utilisateur1.nomUtilisateur) : \(pointUtil)")
                .font(.custom("Ranchers-Regular", size: 25))
            
            
            
            
                TextField("Entrez un nombre", text: $choixNombre)
                        .font(.custom("", size: 30))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .keyboardType(.numberPad)
                        .foregroundColor(.bubbleGumPink)
                        .multilineTextAlignment(.center)
                        .fixedSize()
                    
                   
            Text(correctIncorrect)
                .font(.custom("Ranchers-Regular", size: 40))
            
            
                .padding()
                Button(action: {
                    if let guess = Int(choixNombre) {
                                if guess == nombrAleatoire {
                                correctIncorrect = "Bravooooo"
                                    pointUtil += 1
                            } else if guess < nombrAleatoire {
                            correctIncorrect = "Le chiffre est plus grand"
                            } else {
                            correctIncorrect = "Le chiffre est plus petit"
                            }
                    } else {
                        correctIncorrect = "C'est pas un chiffre..."
                    }
        }) { Text("Soumettre !")
                    .font(.custom("Ranchers-Regular", size: 40))
                    .padding()
                    .background(Color.buttonBlue)
                    .foregroundStyle(
                                LinearGradient(gradient: Gradient(colors: [.bubbleGumPink, .bubbleGumYellow]), startPoint: .topTrailing, endPoint: .bottom))
                    .cornerRadius(10)
            }
                    
                    
                    Spacer()
            
            Image("animateur CO")
                .resizable()
                .frame(width: 130, height: 200)
                    
                    }
                
            }}
}
}


struct g_Previews: PreviewProvider {
    static var previews: some View {
        gameSosooo()
    }
}
