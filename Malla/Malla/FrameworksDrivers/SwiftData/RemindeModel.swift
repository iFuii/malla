//
//  RemindeModel.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 27/11/26.
//

import Foundation
import SwiftData

@Model
final class RemindeModel{
   
    var id: UUID
    var data: Data
    var time: Data
    var titol: String
    var descripcion: String
    var trip: TripModel
    
    init(data: Data, time: Data, titol: String, descripcion: String, trip: TripModel) {
        self.id = UUID()
        self.data = data
        self.time = time
        self.titol = titol
        self.descripcion = descripcion
        self.trip = trip
    }
}
