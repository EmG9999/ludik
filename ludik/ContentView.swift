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
        let bubbleGumPink = Color(red: 0.3, green: 0.7, blue: 0.9, opacity: 0.5)
        
        
        ZStack{
            bubbleGumPink
                .ignoresSafeArea()
            RoundedRectangle(cornerSize: CGSize(width: 80, height: 30))
            
                .frame(width: 300, height: 100)
            
                
                
            Text("COMMENCER ")
                .bold()
                .font(.custom("Ranchers-Regular", size: 30))
                .foregroundStyle(LinearGradient(
                        colors: [.pink, .yellow],
                        startPoint: .leading,
                        endPoint: .trailing))
                
            
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
