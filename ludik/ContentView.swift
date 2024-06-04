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
        VStack{
            Text("je veux jouer a palworld")
                .bold()
                
            
         
            
            
            
            
        }
        VStack {
        

    
        }
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
