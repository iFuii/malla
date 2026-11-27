//
//  TripRepositoryExample.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 25/11/26.
//
//
//import Foundation
//
///// Contrato de persistência que o caso de uso precisa.
/////
///// Camada **Use Cases / Ports**. O protocolo mora aqui porque quem precisa
///// dele é o caso de uso; quem implementa está numa camada externa.
//protocol TripRepositoryExample: Sendable {
//    /// Grava a viagem, criando ou atualizando.
//    ///
//    /// - Parameter trip: viagem já validada pelas regras de negócio.
//    /// - Throws: erro da implementação de persistência.
//    func save(_ trip: Trip) async throws
//}
