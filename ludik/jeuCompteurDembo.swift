//
//  jeuCompteurDembo.swift
//  ludik
//
//  Created by Apprenant 178 on 07/06/2024.
//

import SwiftUI

struct jeuxCompteur: View {
    @State private var count = 0
    @State private var point = 0
    
    
    var body: some View {
        
        ZStack{
            LinearGradient(colors:[.black, .fondBleu], startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Invasion des mots")
                    .font(.custom("Ranchers-Regular", size: 50))
                    .foregroundStyle(.green)
                    .font(.title)
                    .bold()
                    
                Text("Compteur de clics")
                    .font(.largeTitle)
                    .padding()
                    .foregroundStyle(.white)
                    .padding(.top, 50)
                
                Text("Nombre de clics : \(count)")
                    .font(.title)
                    .padding()
                    .foregroundStyle(.white)
                
                
                
                Button(action: {
                    count += 1
                    if count > 20 {
                        count = 0
                    }
                    else if count >= 20 {
                        point = point + 1
                    }
                    else if point >= 3{
                        point = 0
                    }
                    
                }) {
                    Text("Cliquez ici")
                        .font(.custom("Ranchers-Regular", size: 40))
                        .padding()
                        .background(Color.black)
                        .foregroundStyle(
                            LinearGradient(gradient: Gradient(colors: [.green, .green]), startPoint: .topTrailing, endPoint: .topLeading))
                        .shadow(color: .black, radius: 5, x: 2, y: 3)
                        .border(Color.black)
                        .cornerRadius(20)
                        .shadow(color: .black, radius: 2, x: 2, y: 3)
                }.padding()
                
                Text("\(point)")
                    .font(.custom("Ranchers-Regular", size: 100))
                    .foregroundStyle(.white)
                
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
                Image("veseau")
                    .resizable()
                    .frame(width: 30,height: 30)
            }
            
            
        }
    }
}
    struct jeuxcompteur_Previews: PreviewProvider {
        static var previews: some View {
            jeuxCompteur()
        }
    }
