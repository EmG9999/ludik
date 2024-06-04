//
//  ContentView.swift
//  ludik
//
//  Created by Apprenant 165 on 03/06/2024.
//

import SwiftUI
import SwiftData

extension Color {
    static let bubbleGumPink = Color(red: 233/255, green: 179/255, blue: 180/255)
    static let backBlue = Color(red: 167/255, green: 202/255, blue: 200/255)
    static let backBlue2 = Color(red: 142/255, green: 192/255, blue: 215/255)
    static let bubbleGumYellow = Color(red: 253/255, green: 252/255, blue: 198/255)
    static let buttonBlue = Color(red: 111/255, green: 157/255, blue: 181/255)
}

struct ContentView: View {
    
    
    
    var body: some View {
        
        
        
        
        
        
        ZStack{
                LinearGradient(colors: [.backBlue, .backBlue2], startPoint: .top, endPoint: .topTrailing)
                    .ignoresSafeArea()
                
            
            
                VStack{
                
                    Image("ImageJeuSoso")
                        .resizable()
                        .frame(width: 400.0, height: 250.0)
                        .ignoresSafeArea()
        Spacer()
                
                ZStack{
                    RoundedRectangle(cornerSize: CGSize(width: 80, height: 30))
                        .fill(Color.buttonBlue)
                        .frame(width: 300, height: 100)
                
                    Text("COMMENCER ")
                        .font(.custom("Ranchers-Regular", size: 40))
                        .foregroundStyle(
                                LinearGradient(gradient: Gradient(colors: [.bubbleGumPink, .bubbleGumYellow]), startPoint: .topTrailing, endPoint: .bottom))
                        
                }
                    
                    
                    Spacer()
                    Circle()
                        .frame(width: 90)

                    
                    
                    
                    
            }
        }
    }
        
        
        
        
        
        
        
        
        
        
        
    
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
