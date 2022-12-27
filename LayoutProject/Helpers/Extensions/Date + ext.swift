//
//  Date + ext.swift
//  LayoutProject
//
//  Created by Oyatullo Koraboev on 24/12/22.
//
import UIKit


extension Date {
    private var calendar: Calendar {
        return Calendar.current
    }
    
    var startofweek:Date {
        let components = calendar.dateComponents([.yearForWeekOfYear,.weekOfYear],from:self)
        guard let firstDay = calendar.date(from: components) else { return self }
        return calendar.date(byAdding: .day, value: 1, to: firstDay) ?? self
    }
    func agoForward(to days: Int) ->  Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func stripTime() -> Date {
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date (from: components) ?? self
    }
    
}
