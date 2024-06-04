//
//  tetris.swift
//  ludik
//
//  Created by Apprenant 165 on 04/06/2024.
//

import SwiftUI

private let startColor: Color = .orange
private let endColor: Color = .red



struct tetris: View {
    var body: some View {
       
        ZStack {
            
            
            
            LinearGradient(colors: [startColor, endColor], startPoint: .center, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
          

           
                VStack {
                    Image("projecteur2")
                        .position(x: 59, y: 50)
                    Image("LogoEducation1")
                        .position(x: 196)
                    ZStack {
                Image("Rectangle2")
                           .position(x: 205, y: 100)
                HStack {
                Image("JOUER")
                       .position(x: 175, y: 100)
                Image("Polygon4")
                     .position(x: 95, y: 100)
                }
                }
               
            }
        }
    }
}

#Preview {
    tetris()
}
