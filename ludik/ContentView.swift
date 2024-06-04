//
//  ContentView.swift
//  ludik
//
//  Created by Apprenant 165 on 03/06/2024.
//

import SwiftUI
import SwiftData

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
                Text("Comment s'écrit ce mot ?")
                    .font(.custom("Ranchers-Regular", size: 30))
                
                VStack {
                    Text("Hipopotame")
                        .bold()
                        .frame(width: 280,height: 60)
                        .background(.orange)
                    .cornerRadius(20)
                    Text("Hippopotame")
                        .bold()
                        .frame(width: 280,height: 60)
                        .background(.orange)
                        .cornerRadius(20)
                    Text("Ippopotame")
                        .bold()
                        .frame(width: 280,height: 60)
                        .background(.orange)
                        .cornerRadius(20)
                }
                .font(.custom("Ranchers-Regular", size: 40))
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
