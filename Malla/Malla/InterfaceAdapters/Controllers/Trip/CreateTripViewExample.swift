//
//  CreateTripViewExample.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 25/11/26.
//

import Foundation
import SwiftUI

/// Tela de criação de viagem.
///
/// Camada **Interface Adapters / Controllers**. Em SwiftUI, a View cumpre o
/// papel de Controller do diagrama: recebe a intenção do usuário e repassa ao
/// Presenter. Não calcula, não valida e não acessa dados.
struct CreateTripView: View {
    /// Presenter recebido pronto; a View nunca constrói dependências.
    @State private var presenter: CreateTripPresenter

    /// Texto do campo, estado puramente visual.
    @State private var destination = ""

    init(presenter: CreateTripPresenter) {
        _presenter = State(initialValue: presenter)
    }

    var body: some View {
        Form {
            TextField("Destino", text: $destination)
            Button("Criar") {
                Task { await presenter.create(destination: destination) }
            }
            Text(presenter.status)
        }
    }
}
