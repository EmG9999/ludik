//
//  SquareGame.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import Foundation
import Combine
import SwiftUI

struct SquareGame {
    // creation des carrées individuelle qui vont composé les pieces
    var x: Int
    var y: Int
    var occupied: Bool = false
    var color: Color? = nil
}
