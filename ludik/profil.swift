//
//  profil.swift
//  ludik
//
//  Created by Apprenant 165 on 04/06/2024.
//

import SwiftUI

struct profil: View {
    
    private let startColor: Color = .orange
    private let endColor: Color = .red
    
    var body: some View {
        ZStack {
            
        LinearGradient(colors: [startColor, endColor], startPoint: .center, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("DEMPASO")
                    .font(.custom("Ranchers-Regular", fixedSize: 30))
                ZStack {
                    
                    Circle()
                        .frame(height: 250)
                    Image("GABI 1")
                }
    
        Text("LVL 35")
                    .font(.custom("Ranchers", fixedSize: 30))
                    
                
                
                ZStack {
              RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 370, height: 30)
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .position(x: 115, y: 15)
                        .frame(width:300, height: 30)
                        .foregroundStyle(.yellow)
                }
                Spacer()
                VStack {
                    HStack {
                        Image("Badge_01")
                        Image("Badge_02")
                        Image("Badge_03")
                        Image("Badge_04")
                    }
                    HStack {
                        Image("Badge_05")
                        Image("Badge_06")
                        Image("Badge_07")
                        Image("Badge_08")
                    }
                    Image("Badge_09")
                }
                
            }
        }
    }
}

#Preview {
    profil()
}
