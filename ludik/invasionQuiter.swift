//
//  ecran2.swift
//  ludik
//
//  Created by Apprenant 142 on 05/06/2024.
//

import SwiftUI

struct ecran2: View {
    var body: some View {
        
        ZStack{
            LinearGradient(colors:[.black, .fondBleu], startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Text("RECOMMENCER")
            
                .font(.custom("Ranchers-Regular", size: 50))
                .padding()
                .background(Color.black)
                .foregroundStyle(
                    LinearGradient(gradient: Gradient(colors: [.green, .green]), startPoint: .topTrailing, endPoint: .topLeading))
                .shadow(color: .black, radius: 5, x: 2, y: 3)
                .border(Color.black)
                .cornerRadius(20)
                .shadow(color: .black, radius: 2, x: 2, y: 3)
                .padding(.bottom, 50)

            
            Text("quitter")
                                        .font(.custom("Ranchers-Regular", size: 50))
                                        .padding()
                                        .background(Color.black)
                                        .foregroundStyle(
                                            LinearGradient(gradient: Gradient(colors: [.green, .green]), startPoint: .topTrailing, endPoint: .topLeading))
                                        .shadow(color: .black, radius: 5, x: 2, y: 3)
                                        .border(Color.black)
                                        .cornerRadius(20)
                                        .shadow(color: .black, radius: 2, x: 2, y: 3)
                                        .padding(.top, 200)
            
            

        }
        
        
    }
}

#Preview {
    ecran2()
}
