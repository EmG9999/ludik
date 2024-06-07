//
//  CommencerMathAdder.swift
//  ludik
//
//  Created by Apprenant 165 on 07/06/2024.
//

import SwiftUI

struct EcranCommencerTetris: View {
    private let startColor: Color = .orange
    private let endColor: Color = .red
    
    

    
    var body: some View {
     
            
            VStack {
                ZStack {
                    LinearGradient(colors: [startColor, endColor], startPoint: .center, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        ZStack{
                            Circle()
                            Text("Math  Adder")
                                .font(.custom("Ranchers", size: 70))
                                .foregroundStyle(.white)
                        }
                        ZStack {
                            Image("Rectangle 64-2")
                            Image("Commencer")
                        }
                        ZStack {
                            Image("Rectangle 91")
                            Text("Record : 345678")
                                .font(.custom("Ranchers", fixedSize: 30))
                                .foregroundStyle(.white)
                        }
                        ZStack {
                            Circle()
                                .frame(width:100)
                            Image(systemName: "house")
                                .resizable()
                                .frame(width: 80, height:70)
                                .foregroundStyle(.white)
                            
                        }
                    }
                }
                
            }
      
    }
  }

#Preview {
    EcranCommencerTetris()
}
