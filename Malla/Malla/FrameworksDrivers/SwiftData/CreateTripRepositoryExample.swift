//
//  CreateTripRepositoryExample.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 25/11/26.
//

import Foundation
import SwiftData

/// Implementa ``TripRepository`` gravando no SwiftData.
///
/// Camada **Frameworks & Drivers**, porque importa `SwiftData`. O papel que
/// cumpre é o de *Gateway* do diagrama — a pasta segue o import, não o nome
/// do papel.
struct SwiftDataTripRepository: TripRepository {
    /// Contexto de escrita entregue pelo `AppDependencies`.
    let context: ModelContext

    /// Insere uma nova viagem.
    ///
    /// - Parameter trip: viagem criada pelo caso de uso.
    /// - Throws: erro do `ModelContext` ao salvar.
    func save(_ trip: Trip) async throws {
        context.insert(TripModel(destination: trip.destination))
        try context.save()
    }
}
