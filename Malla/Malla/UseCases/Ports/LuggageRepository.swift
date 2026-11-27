//
//  LugaggeRepository.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 27/11/26.
//

import Foundation

protocol LuggageRepository: Sendable{
    func add()
    func delete()
    func updateName()
    func updateItens(_ itens:[ItemModel]) // TODO: mudar nome do [ItemModel] para o do DTO
    func getLugagge()
    func getItensInLugagge()
    
}
