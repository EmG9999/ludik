//
//  ViewModel.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    
    let width: Int = 10
    let height: Int = 26
    
    @Published var boardMatrix: [[SquareGame?]]
    
    init() {
            boardMatrix = Array(repeating: Array(repeating: nil, count: width), count: height)
        }
    
}

