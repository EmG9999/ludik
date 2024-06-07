//
//  PieceO.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import Foundation
import SwiftUI

struct OShape: Shape {
   
    
    
    var color: Color {
        Color.yellow
    }
    
    var ocuppiedPositions: [GridPosition] = [
        GridPosition(x: 4, y: -1),
        GridPosition(x: 5, y: -1),
        GridPosition(x: 4, y: 0),
        GridPosition(x: 5, y: 0),
    ]

    
}
