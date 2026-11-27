//
//  TripLuggageModel.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 27/11/26.
//

import SwiftData
import Foundation

@Model
final class TripLuggageModel {
    var id: UUID
    var name: String
    var litersTotal: LitersModel

    var trip: TripModel?

    @Relationship(deleteRule: .nullify, inverse: \TripItemModel.luggage)
    var items: [TripItemModel] = []

    init(name: String, litersTotal: LitersModel) {
        self.id = UUID()
        self.name = name
        self.litersTotal = litersTotal
    }

    convenience init(copying template: LuggageModel) {
        self.init(name: template.name, litersTotal: template.liters)
    }
}
