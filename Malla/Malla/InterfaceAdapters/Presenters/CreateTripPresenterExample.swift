//
//  CreateTripPresenterExample.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 25/11/26.
//


import Foundation
import Observation

/// Traduz o resultado do caso de uso em estado de tela.
///
/// Camada **Interface Adapters / Presenters**. Um Presenter por tela.
///
/// - Note: `@MainActor` porque publica estado para a UI; `@Observable` porque é
///   o mecanismo atual da Apple. Se este arquivo importar `SwiftData`, está no
///   lugar errado.
@MainActor
@Observable
final class CreateTripPresenter {
    /// Mensagem que a View exibe após a tentativa de criar.
    private(set) var status = ""

    /// Caso de uso visto por protocolo, para permitir dublê nos testes.
    private let createTrip: CreateTripInputBoundary

    init(createTrip: CreateTripInputBoundary) {
        self.createTrip = createTrip
    }

    /// Chamado pela View quando o usuário confirma.
    ///
    /// - Parameter destination: texto do campo de destino.
    func create(destination: String) async {
        do {
            try await createTrip.execute(destination: destination)
            status = "Viagem criada."
        } catch {
            status = "Não foi possível criar a viagem."
        }
    }
}
