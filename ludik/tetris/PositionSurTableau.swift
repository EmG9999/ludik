//
//  PositionSurTableau.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import Foundation
// protocol pour definir l'emplacement des pieces sur le tableau
protocol GridPositionProtocol {
    var x: Int { get set }
    var y: Int { get set }
    var isPivot: Bool { get set }
}

struct GridPosition: GridPositionProtocol {
    var x: Int = -1
    var y: Int = -1
    var isPivot: Bool = false
}
