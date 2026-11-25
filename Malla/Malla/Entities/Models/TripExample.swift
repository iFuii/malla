//
//  TripExample.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 25/11/26.
//

import Foundation

/// Uma viagem que o usuário vai fazer.
///
/// Camada **Entities**. Regra que existe mesmo sem app: duas viagens ao mesmo
/// destino continuam sendo viagens diferentes.
///
/// - Note: Só importa `Foundation`. Se aparecer `SwiftUI`, `SwiftData` ou
///   `Observation` aqui, a camada vazou.
struct Trip: Identifiable, Sendable {
    /// Identidade da viagem. É o que diferencia duas viagens ao mesmo destino.
    let id: UUID

    /// Cidade ou país digitado pelo usuário.
    var destination: String
}
