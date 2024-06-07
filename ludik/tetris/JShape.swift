//
//  JShape.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import Foundation
import SwiftUI

struct JShape: Shape {
   
    
    
    var color: Color {
        Color.purple
    }
    
    var ocuppiedPositions: [GridPosition] = [
        GridPosition(x: 4, y: -1),
        GridPosition(x: 4, y: 0, isPivot: true),
        GridPosition(x: 4, y: 1),
        GridPosition(x: 3, y: 1)
    ]

    
}
