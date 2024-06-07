//
//  tetrisJeux.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import SwiftUI

struct tetrisJeux: View {
    @StateObject var viewModel = ViewModel()
    
    let boxSize: CGFloat = 20.0
    let spacing: CGFloat = 2.0
    
    var body: some View {
           ZStack {
               VStack {
                   HStack {
                       VStack {
                           board
                       }
                       .padding(.top, 80)
                       .padding(.horizontal, 20)
                       Spacer()
                   }
                   Spacer()
                
                       .padding(.horizontal)
                       .padding(.bottom, 20)
               }
             
           }
           .ignoresSafeArea(.all)
           .background(Color.black)
           
       }
    
    var board: some View {
        VStack(spacing: spacing) {
            
        ForEach(0..<viewModel.height, id: \.self) { y in HStack(spacing: spacing) {
            ForEach(0..<viewModel.width, id: \.self) {
                x in 
               
                
                let squareGame = viewModel.getSquareGame(x: x, y: y)
                let color = squareGame?.color ??
                Color.orange.opacity(0.2)
                
                Rectangle()
                    .aspectRatio(1.0, contentMode: .fit)
                    .foregroundColor(color)
                    .frame(width: boxSize, height: boxSize)
                    .padding(0)
                
            }
        }
            
        }
        }

    }
   
}

struct tetrisJeux_Preview: PreviewProvider {
    static var previews: some View {
        tetrisJeux()
    }
}

   

