//
//  IShape.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import Foundation
import SwiftUI

struct IShape: Shape {
   
    
    
    var color: Color {
        Color.red
    }
    
    var ocuppiedPositions: [GridPosition] = [
        GridPosition(x: 4, y: -1),
        GridPosition(x: 4, y: 0),
        GridPosition(x: 4, y: 1, isPivot: true),
        GridPosition(x: 4, y: 2)
    ]

    
}
