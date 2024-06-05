//
//  Frame3Matiere.swift
//  ludik
//
//  Created by Apprenant 123 on 05/06/2024.
//

import SwiftUI

extension Color{
    // Couleurs fon écran appli
    static let fondEcranColor1 = Color(red: 255/255, green: 166/255, blue: 41/255)
    static let fondEcranColor2 = Color(red: 243/255, green: 74/255, blue: 85/255)
}

struct Frame3Matiere: View {
    var body: some View {
        ZStack {
            LinearGradient(colors:[.fondEcranColor1, .fondEcranColor2], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack {
               Image("AnimateurSolo")
                    .resizable()
                    .frame(width: 300, height: 300)
                HStack{
                    Rectangle()
                        .frame(width: 150,height: 100)
                    Rectangle()
                        .frame(width: 150,height: 100)
                }
                HStack{
                    Rectangle()
                        .frame(width: 150,height: 100)
                    Rectangle()
                        .frame(width: 150,height: 100)
                }
            }
        }
    }
}

#Preview {
    Frame3Matiere()
}
