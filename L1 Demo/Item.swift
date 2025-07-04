//
//  Item.swift
//  L1 Demo
//
//  Created by Lalit Krishna on 04/07/25.
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
