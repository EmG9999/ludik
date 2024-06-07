//
//  ButtonView.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import SwiftUI

struct ButtonView: View {
    
    var action: () -> Void
    var body: some View {
       
        Button(action: {
            action()
            
        }, label: {
            Image(systemName: "arrow.clockwise")
        })
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView() {}
    }
}
   

