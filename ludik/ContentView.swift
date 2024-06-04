//
//  ContentView.swift
//  ludik
//
//  Created by Apprenant 165 on 03/06/2024.
//

import SwiftUI
import SwiftData

extension Color{
    static let buttonChoiceOrange = Color(red: 236/255, green: 144/255, blue: 5/255)
    static let buttonChoiceRed = Color(red: 228/255, green: 75/255, blue: 84/255)


}
    

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors:[.orange, .red], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack {
            Text("Quiz des Lettres")
                .font(.custom("Ranchers-Regular", size: 40))
                .padding(.bottom)
                HStack {
                    VStack {
                        Text("Mots: 1/20")
                        Text("Score:10")
                    }
                    VStack {
                        Text("0:00")
                        Button {
                            print("pause")
                        } label: {
                            Text("II")
                                .foregroundStyle(.black)
                        }
                    }
                }
                .font(.custom("Ranchers-Regular", size: 25))
                Image("Hippopotamus")
                    .resizable()
                    .frame(width: 130, height: 130, alignment: .center)
                // Titre des 3 bouttons
                Text("Comment s'écrit ce mot ?")
                    .font(.custom("Ranchers-Regular", size: 25))
                // 3 bouttons de la sélectinn de la bonne réponse
                VStack {
                    Text("Hipopotame")
                        .frame(width: 267,height: 74)
                        .background(.orange)
                        .cornerRadius(20)
                    Text("Hippopotame")
                        .frame(width: 267,height: 74)
                        .background(.orange)
                        .cornerRadius(20)
                    Text("Ippopotame")
                        .frame(width: 267,height: 74)
                        .background(LinearGradient(
                                colors: [.buttonChoiceOrange, .buttonChoiceRed],
                                startPoint: .leading,
                                endPoint: .trailing))
                        .cornerRadius(20)
                        
                        
                }
                // Boutton "Commencer"
                .font(.custom("Ranchers-Regular", size: 40))
                .foregroundColor(.white)
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                
                
                Text("Commencer")
                    .frame(width: 327,height: 48)
                    .background(.orange)
                    .cornerRadius(80)
                    .foregroundColor(.white)
                    .font(.custom("Ranchers-Regular", size: 30))
            }
            
            
            
        }
        
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
