//
//  TripModel.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 27/11/26.
//

import Foundation
import SwiftData

@Model
final class TripModel: Sendable {
    
    var id: UUID
    var name: String
    var deta: Data
    var photo: Data
    var type: TripType
    var lugagge: [UUID]?
    var itens: [ItemModel]
    var reminders: [ReminderModel]?
    var Duration: Int
    var Recurrence: RecurrenceModel?
    var UfOrigin:  UFModel
    var UfDestination: UFModel
    var Origin: String
    var Destination: String
    
    init(name: String, deta: Data, photo: Data, lugagge: [UUID]? = nil, itens: [ItemModel], Duration: Int, UfOrigin: UFModel, UfDestination: UFModel, Origin: String, Destination: String) {
        self.id = UUID()
        self.name = name
        self.deta = deta
        self.photo = photo
        self.type = type
        self.lugagge = lugagge
        self.itens = itens
        self.Duration = Duration
        self.UfOrigin = UfOrigin
        self.UfDestination = UfDestination
        self.Origin = Origin
        self.Destination = Destination
    }
    
    
}
