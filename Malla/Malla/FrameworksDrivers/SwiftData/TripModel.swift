//
//  TripModel.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 27/11/26.
//

import Foundation
import SwiftData

@Model
final class TripModel {
    
    var id: UUID
    var name: String
    var deta: Data
    var photo: Data
    var type: TripType
    var lugagge: [UUID]?
    var itens: [ItemModel]
    var reminders: [ReminderModel]?
    var duration: Int
    var recurrence: RecurrenceModel?
    var ufOrigin:  UFModel
    var ufDestination: UFModel
    var origin: String
    var destination: String
    
    init(name: String, deta: Data, photo: Data,type: TripType, lugagge: [UUID]? = nil, itens: [ItemModel], duration: Int, ufOrigin: UFModel, ufDestination: UFModel, origin: String, destination: String) {
        self.id = UUID()
        self.name = name
        self.deta = deta
        self.photo = photo
        self.type = type
        self.lugagge = lugagge
        self.itens = itens
        self.duration = duration
        self.ufOrigin = ufOrigin
        self.ufDestination = ufDestination
        self.origin = origin
        self.destination = destination
    }
    
    
}

