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
//  TODO:  var type: typeModelEnum
    var lugagge: [UUID]?
    var itens: [ItemModel]
//  TODO: var reminders: [remindersModel]?
    var Duration: Int
//  TODO: var Recurrence: RecurrenceEnum?
    var UfoOrigin: UFOModel
    var UfoDestination: UFOModel
    var Origin: String
    var Destination: String
    
    init(name: String, deta: Data, photo: Data, lugagge: [UUID]? = nil, itens: [ItemModel], Duration: Int, UfoOrigin: UFOModel, UfoDestination: UFOModel, Origin: String, Destination: String) {
        self.id = UUID()
        self.name = name
        self.deta = deta
        self.photo = photo
//      TODO:  self.type = type
        self.lugagge = lugagge
        self.itens = itens
        self.Duration = Duration
        self.UfoOrigin = UfoOrigin
        self.UfoDestination = UfoDestination
        self.Origin = Origin
        self.Destination = Destination
    }
    
    
}
