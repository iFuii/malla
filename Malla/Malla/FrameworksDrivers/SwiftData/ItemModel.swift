//
//  ItemModel.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 26/11/26.
//

import SwiftData
import SwiftUI

@Model
final class ItemModel{
    
    var id: UUID
    var name: String
    var quantity: Int
    var size: Double?
    var isInLuggage: Bool
    var isEssencial: Bool
    
    init(name: String, quantity: Int, size: Double? = 0, isInLuggage: Bool, isEssencial: Bool) {
        self.id = UUID()
        self.name = name
        self.quantity = quantity
        self.size = size
        self.isInLuggage = isInLuggage
        self.isEssencial = isEssencial
    }
    
}
