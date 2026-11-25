//
//  TripModelExample.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 25/11/26.
//

import Foundation
import SwiftData

/// Registro de viagem no banco.
///
/// Camada **Frameworks & Drivers**. `@Model` é detalhe de tecnologia: existe
/// só aqui e nunca é passado para Presenter, View ou Entities.
@Model
final class TripModel {
    /// Destino da viagem, gravado como o usuário digitou.
    var destination: String

    init(destination: String) {
        self.destination = destination
    }
}
