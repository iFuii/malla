//
//  CreateTripExample.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 25/11/26.
//

//import Foundation
//
///// O que a tela pode pedir ao caso de uso de criar viagem.
/////
///// Camada **Use Cases**. O Presenter depende deste protocolo, nunca da struct
///// `CreateTripUseCase`. É o que permite testar a tela sem banco nenhum.
//protocol CreateTripInputBoundary: Sendable {
//    /// Cria uma viagem com o destino informado.
//    ///
//    /// - Parameter destination: texto digitado pelo usuário.
//    /// - Throws: erro vindo de ``TripRepository``.
//    func execute(destination: String) async throws
//}
