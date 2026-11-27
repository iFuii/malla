//
//  LugaggeModel.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 26/11/26.
//

import SwiftData
import Foundation

@Model
final class LuggageModel {
    
    var id: UUID
    var name: String
    var liters: LitersModel
    var Occupation: Double
    var trip: TripModel?
    var itens: [ItemModel]
    
    init(name: String, liters: LitersModel, Occupation: Double, trip: TripModel, itens: [ItemModel]) {
        self.id = UUID()
        self.name = name
        self.liters = liters
        self.Occupation = Occupation
        self.trip = trip
        self.itens = itens
    }
}
