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
        
        ZStack{
            LinearGradient(colors:[.black, .blue], startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            
            
            
            VStack {//Grande VStak Début
                
                    Text("Invasion des mots")
                        .font(.custom("Ranchers-Regular", size: 30))
                        .foregroundStyle(.green)
                        .font(.title)
                        .bold()
                    
                    
                    
                HStack{
                    Text("manger ")
                        .font(.custom("Ranchers-Regular", size: 20))
                        .foregroundStyle(.white)
                        .font(.title)
                        .bold()
                    
                    
                        
                        Text("manger ")
                            .font(.custom("Ranchers-Regular", size: 20))
                            .foregroundStyle(.white)
                            .font(.title)
                            .bold()
                            .padding(.top, 100)
                        
                        
                    
                    Text("manger ")
                        .font(.custom("Ranchers-Regular", size: 20))
                        .foregroundStyle(.white)
                        .font(.title)
                        .bold()
                    
                }
                
                
                Spacer()
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 300, height: 100)
                    
                    VStack{
                        Text("Commencer")
                            .foregroundStyle(.green)
                            .font(.title)
                            .bold()
                            //.padding -> fait le padding et le margin
                    }
                    
                    
                }
                
                Spacer()
                
                VStack{
                    Image("veseau")
                        .resizable()
                        .frame(width: 30,height: 30)
                    ZStack{
                        RoundedRectangle(cornerRadius: 100)
                            .frame(width: 50, height: 50)
                        
                        Image("house")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                        
                }
                
                
            } //Grande VStack Fin
            
        }
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
