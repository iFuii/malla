//
//  UFOEnum.swift
//  Malla
//
//  Created by Pedro Monge Silveira on 27/11/26.
//

import Foundation

enum UFModel: String, Codable{
    case ac = "Acre"
    case al = "Alagoas"
    case ap = "Amapá"
    case am = "Amazonas"
    case ba = "Bahia"
    case ce = "Ceará"
    case df = "Distrito Federal"
    case es = "Espírito Santo"
    case go = "Goiás"
    case ma = "Maranhão"
    case mt = "Mato Grosso"
    case ms = "Mato Grosso do Sul"
    case mg = "Minas Gerais"
    case pa = "Pará"
    case pb = "Paraíba"
    case pr = "Paraná"
    case pe = "Pernambuco"
    case pi = "Piauí"
    case rj = "Rio de Janeiro"
    case rn = "Rio Grande do Norte"
    case rs = "Rio Grande do Sul"
    case ro = "Rondônia"
    case rr = "Roraima"
    case sc = "Santa Catarina"
    case sp = "São Paulo"
    case se = "Sergipe"
    case to = "Tocantins"
    
    var assetName: String {
        rawValue
            .folding(options: .diacriticInsensitive, locale: .current)
            .lowercased()
            .replacingOccurrences(of: " ", with: "-")
    }
}
