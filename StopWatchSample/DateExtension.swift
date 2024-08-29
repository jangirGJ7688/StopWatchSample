//
//  DateExtension.swift
//  StopWatchSample
//
//  Created by Ganpat Jangir on 28/08/24.
//

import Foundation

extension Date {
    func asString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:MM:SS"
        return formatter.string(from: self)
    }
}
