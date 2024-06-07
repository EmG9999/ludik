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
                
                    Text("Invasion des chiffres")
                        .font(.custom("Ranchers-Regular", size: 30))
                        .foregroundStyle(.green)
                        .font(.title)
                        .bold()
                    
                    
                    
                HStack{
                    Text("1 ")
                        .font(.custom("Ranchers-Regular", size: 20))
                        .foregroundStyle(.white)
                        .font(.title)
                        .bold()
                    
                    
                        
                        Text("2")
                            .font(.custom("Ranchers-Regular", size: 20))
                            .foregroundStyle(.white)
                            .font(.title)
                            .bold()
                            .padding(.top, 100)
                        
                        
                    
                    Text("3 ")
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
                
                Button(
                    action: {
                        // do something
                    },
                    label: {  ZStack{
                        
                        
                        
                        Text("COMMENCER")
                                                    .font(.custom("Ranchers-Regular", size: 50))
                                                    .padding()
                                                    .background(Color.black)
                                                    .foregroundStyle(
                                                        LinearGradient(gradient: Gradient(colors: [.green, .green]), startPoint: .topTrailing, endPoint: .topLeading))
                                                    .shadow(color: .black, radius: 5, x: 2, y: 3)
                                                    .border(Color.black)
                                                    .cornerRadius(20)
                                                    .shadow(color: .black, radius: 2, x: 2, y: 3)
                                //.padding -> fait le padding et le margin
                        }
                        
                        
                    }
                )
                
               
                
                
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
