//
//  connexion.swift
//  ludik
//
//  Created by Apprenant 165 on 04/06/2024.
//

import SwiftUI

struct connexion: View {
    
    private let startColor: Color = .orange
    private let endColor: Color = .red

    var body: some View {
        
        LinearGradient(colors: [startColor, endColor], startPoint: .center, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        
        
    }
}

#Preview {
    connexion()
}
