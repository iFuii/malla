//
//  CardTripComponent.swift
//  Malla
//
//  Created by Leonardo Gonçalves da Silva on 27/11/26.
//
import SwiftUI

struct CardTripComponent: View {
    //TODO: aplicar as cores
    let ufModel: UFModel
    //TODO: mudar para a enum de tipo de viagem
    let typeTrip: TripType
    let way: WayTypeModel
    let title: UFModel
    let interval: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            HStack(spacing: 8) {
                Text(typeTrip.rawValue)
                    .font(.caption)
                    .fontWeight(.medium)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color(.secondary))
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
                   
                Text(way.rawValue)
                    .font(.caption)
                    .fontWeight(.medium)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color(.white))
                    .clipShape(Capsule())
            }
            .padding(12)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .background {
                Image(ufModel.assetName)
                    .resizable()
                    .scaledToFill()
            }
            .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(ufModel.rawValue)
                    .font(.title3)
                    .fontWeight(.semibold)
                //TODO: trocar essa cor
                    .foregroundStyle(Color.white)
                
                Text(interval)
                    .font(.subheadline)
                //TODO: trocar essa cor
                    .foregroundStyle(Color.tertiary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color(.primary))
        }
        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 166, maxHeight: .infinity)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .padding(.horizontal)
    }
}

#Preview {
    VStack(spacing: 16) {
        CardTripComponent(
            ufModel: .ma,
            typeTrip: .freeTime,
            way: .goWay,
            title: .ma,
            interval: "12–18 Apr."
        )
        CardTripComponent(
            ufModel: .ac,
            typeTrip: .work,
            way: .returnWay,
            title: .ac,
            interval: "12–18 Apr."
        )
        CardTripComponent(
            ufModel: .sp,
            typeTrip: .freeTime,
            way: .goWay,
            title: .sp,
            interval: "12–18 Apr."
        )
        CardTripComponent(
            ufModel: .ba,
            typeTrip: .work,
            way: .returnWay,
            title: .ba,
            interval: "12–18 Apr."
        )
    }
    .padding(.vertical)
}
