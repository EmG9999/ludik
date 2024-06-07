//
//  TShape.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import Foundation
import SwiftUI

struct TShape: Shape {
   
    
    
    var color: Color {
        Color.green
    }
    
    var ocuppiedPositions: [GridPosition] = [
        GridPosition(x: 3, y: -1),
        GridPosition(x: 4, y: -1, isPivot: true),
        GridPosition(x: 5, y: -1),
        GridPosition(x: 4, y: 0)
    ]

    
}
