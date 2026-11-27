//
//  CreateTripUseCaseExample.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 25/11/26.
//
//
//import Foundation
//
///// Cria uma viagem a partir do destino digitado.
/////
///// Camada **Use Cases**. Orquestra: cria a entidade, persiste pela porta e
///// devolve o controle. Não formata texto e não conhece SwiftData.
//struct CreateTripUseCase: CreateTripInputBoundary {
//    /// Porta de persistência, injetada pelo Composition Root.
//    let repository: TripRepository
//
//    /// - Parameter destination: destino já sem espaços nas pontas.
//    func execute(destination: String) async throws {
//        try await repository.save(Trip(id: UUID(), destination: destination))
//    }
//}
