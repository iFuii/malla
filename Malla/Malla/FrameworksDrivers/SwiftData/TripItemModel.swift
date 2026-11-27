//
//  TripItemModel.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 27/11/26.
//
import SwiftData
import Foundation


@Model
final class TripItemModel {
    var id: UUID
    var name: String
    var quantity: Int
    var size: Double?
    var isEssencial: Bool

    var trip: TripModel?
    var luggage: TripLuggageModel?

    init(name: String, quantity: Int = 1, size: Double? = nil, isEssencial: Bool = false) {
        self.id = UUID()
        self.name = name
        self.quantity = quantity
        self.size = size
        self.isEssencial = isEssencial
    }

    convenience init(copying template: ItemModel) {
        self.init(name: template.name, size: template.size)
    }
}
