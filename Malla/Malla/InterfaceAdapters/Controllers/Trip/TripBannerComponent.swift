//
//  TripBannerComponent.swift
//  Malla
//
//  Created by Felipe Colares Cardoso on 27/11/26.
//



/*
 ============================================================================
 COMO IMPLEMENTAR ESTE COMPONENTE NAS SUAS TELAS:
 
 Para exibir apenas UM banner na sua View, instancie `TripBannerComponent`
 passando o `type` desejado (`.type1` ou `.type2`) junto com os textos:

 1. Exibindo o Tipo 1 (imagem automática: "MediumBaggage"):
    TripBannerComponent(
        type: .type1,
        title: "Só leve o que importa!",
        subtitle: "A gente cuida da lista.\nVocê aproveita o caminho."
    )

 2. Exibindo o Tipo 2 (imagem automática: "LargeBaggage"):
    TripBannerComponent(
        type: .type2,
        title: "Viagem longa à vista?",
        subtitle: "Organize sua mala grande sem esquecer nada."
    )

 3. Alternando dinamicamente via variável/@State:
    @State private var selectedType: TripBannerType = .type1

    TripBannerComponent(
        type: selectedType,
        title: "Título dinâmico",
        subtitle: "Subtítulo dinâmico"
    )
 ============================================================================
 */






import SwiftUI

enum TripBannerType {
    case type1
    case type2

    var imageName: String {
        switch self {
        case .type1:
            return "MediumBaggage"
        case .type2:
            return "LargeBaggage"
        }
    }

    var backgroundColor: Color {
        switch self {
        case .type1:
            return Color(.tertiary)
        case .type2:
            return Color(.tertiary) // Altere aqui caso o Tipo 2 tenha outra cor de fundo
        }
    }

    var titleColor: Color {
        switch self {
        case .type1:
            return Color(.black)
        case .type2:
            return Color(.black)
        }
    }

    var subtitleColor: Color {
        switch self {
        case .type1:
            return Color(.secondaryLabel)
        case .type2:
            return Color(.secondaryLabel)
        }
    }
}

struct TripBannerComponent: View {
    let type: TripBannerType
    let title: String
    let subtitle: String
    var cornerRadius: CGFloat = 24

    init(
        type: TripBannerType = .type1,
        title: String,
        subtitle: String,
        cornerRadius: CGFloat = 24
    ) {
        self.type = type
        self.title = title
        self.subtitle = subtitle
        self.cornerRadius = cornerRadius
    }

    var body: some View {
        HStack(alignment: .center, spacing: 18) {
            Image(type.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 92, height: 92)

            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.system(.title2, design: .serif, weight: .bold))
                    .foregroundStyle(type.titleColor)
                    .lineLimit(2)
                    .minimumScaleFactor(0.85)

                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(type.subtitleColor)
                    .lineLimit(3)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(16)
        .frame(maxWidth: .infinity, minHeight: 122)
        .background(
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .fill(type.backgroundColor)
        )
        .padding(.horizontal, 16)
    }
}

#Preview {
    VStack(spacing: 16) {
        // Tipo 1 -> Usa automaticamente "MediumBaggage"
        TripBannerComponent(
            type: .type1,
            title: "Só leve o que importa!",
            subtitle: "A gente cuida da lista.\nVocê aproveita o caminho."
        )

        // Tipo 2 -> Usa automaticamente "LargeBaggage"
        TripBannerComponent(
            type: .type2,
            title: "Viagem longa à vista?",
            subtitle: "Organize sua mala grande sem esquecer nada."
        )
    }
}

