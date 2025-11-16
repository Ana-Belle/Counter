//
//  Date+Extensions.swift
//  Counter
//
//  Created by Anastasia Belyakova on 16.11.2025.
//
import Foundation

extension Date {
    func formatDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        return formatter.string(from: self)
    }
}
