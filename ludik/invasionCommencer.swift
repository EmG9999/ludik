//
//  ContentView.swift
//  ludik
//
//  Created by Apprenant 165 on 03/06/2024.
//

import SwiftUI
import SwiftData

extension Color{
    static let fondBleu = Color(red: 38/255, green: 9/255, blue: 154/255)
}

struct ContentView: View {
    
    
    var body: some View {
        
        ZStack{
            LinearGradient(colors:[.black, .fondBleu], startPoint: .top, endPoint: .center)
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
                
                
                VStack{
                    Image("missil")
                        .resizable()
                        .frame(width: 10, height: 40)
                    
                    Image("missil")
                        .resizable()
                        .frame(width: 10, height: 40)
                        .padding(.leading, 70)
                        
                    
                    Image("missil")
                        .resizable()
                        .frame(width: 10, height: 40)
                }
                
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
                
                
                VStack{
                    Image("missil")
                        .resizable()
                        .frame(width: 10, height: 40)
                    
                    Image("missil")
                        .resizable()
                        .frame(width: 10, height: 40)
                        .padding(.trailing, 80)
                    
                    Image("missil")
                        .resizable()
                        .frame(width: 10, height: 40)
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
