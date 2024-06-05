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
            
            

        }
    }
}

#Preview {
    ecran2()
}
