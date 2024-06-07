//
//  reponseMain.swift
//  ludik
//
//  Created by Apprenant 165 on 07/06/2024.
//

import SwiftUI
import SwiftUI
struct AnswerButton: View {
    var number : Int
    
    var body: some View {
        Text("\(number)")
            .font(.custom("Ranchers", size: 40))
        .frame(width: 110, height: 110)
        .font(.system(size: 40, weight: .bold))
        .foregroundColor(Color.white)
        .background(Color.blue)
        .clipShape(Circle())
        .padding()
    }
}

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButton(number: 1000)
    }
}
