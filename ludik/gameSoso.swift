//
//  gameSoso.swift
//  ludik
//
//  Created by Apprenant 178 on 06/06/2024.
//

import SwiftUI




struct gameSoso: View {
    @State private var choixNombre = ""
    @State private var correctIncorrect = ""
    
    
    let nombrAleatoire = Int.random(in: 1...10)
    
    
    
    
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
                    
                Text("Devine le nombre")
                        .font(.custom("Ranchers-Regular", size: 55))
                        .foregroundStyle(
                            LinearGradient(gradient: Gradient(colors: [.bubbleGumPink, .bubbleGumYellow]), startPoint: .topTrailing, endPoint: .bottom))
                        .padding(.top, 130)
                }
                
                
                
        VStack{
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
                        let guess = Int(choixNombre)
                        if guess == nombrAleatoire {
                            correctIncorrect = "Bravooooo"
                        } else {
                            correctIncorrect = "Incorrect!"
                        }
        }) {
    
                Text("Soumettre !")
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
        gameSoso()
    }
}
