//
//  ItemsRepository.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 27/11/26.
//

import Foundation

protocol ItemsRepository: Sendable {
    func add()
    func delete()
    func deleteAll(id Trip: UUID)
    func update(number Items: Int)
}
