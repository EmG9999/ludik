//
//  Item.swift
//  ludik
//
//  Created by Apprenant 165 on 03/06/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
