//
//  ReminderRepository.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 27/11/26.
//

protocol ReminderRepository: Sendable{
    func add()
    func delete()
    func update()
    func deleteAll()
}
