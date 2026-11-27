//
//  Untitled.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 27/11/26.
//

import Foundation

protocol TripRepository: Sendable{
    func add()
    func delete()
    func deleteAllReminders(_ Reminder:[ReminderModel])// TODO: mudar o tipo do aray
    func update()
    func get()
}
