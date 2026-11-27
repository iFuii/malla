//
//  RemindeModel.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 27/11/26.
//

import Foundation
import SwiftData

@Model
final class ReminderModel{
   
    var id: UUID
    var data: Data
    var time: Data
    var title: String
    var reminderDescription: String
    var trip: TripModel?
    
    init(id: UUID, data: Data, time: Data, title: String, reminderDescription: String) {
        self.id = id
        self.data = data
        self.time = time
        self.title = title
        self.reminderDescription = reminderDescription
    }
}
