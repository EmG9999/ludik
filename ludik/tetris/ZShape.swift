//
//  ZShape.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import Foundation
import SwiftUI

struct ZShape: Shape {
   
    
    
    var color: Color {
        Color.pink
    }
    
    var ocuppiedPositions: [GridPosition] = [
        GridPosition(x: 4, y: -1),
        GridPosition(x: 5, y: -1, isPivot: true),
        GridPosition(x: 5, y: 0),
        GridPosition(x: 6, y: 0)
    ]

    
}
