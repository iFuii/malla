//
//  RecurrenceModel.swift
//  Malla
//
//  Created by Leonardo Gonçalves da Silva on 27/11/26.
//
import Foundation

enum RecurrenceModel: Codable, Hashable{
    case daily
    case weekly(weekday: Int)
    case monthly(day: Int)
    case yearly(month: Int, day: Int)
    
    var dataComponents: DateComponents {
        switch self {
        case .daily:
            return DateComponents(hour: 0, minute: 0)
        case .weekly(weekday: let weekday):
            return DateComponents(weekday: weekday)
        case .monthly(day: let day):
            return DateComponents(day: day)
        case .yearly(month: let month, day: let day):
            return DateComponents(month: month, day: day)
        }
    }
    func nextDate(after date: Date = .now, calendar: Calendar = .current) -> Date? {
        calendar.nextDate(after: date,
                          matching: dataComponents,
                          matchingPolicy: .nextTimePreservingSmallerComponents
        )
    }
    
}
