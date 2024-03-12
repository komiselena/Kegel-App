//
//  CalendarManager.swift
//  Kegel App
//
//  Created by Mac on 11.03.2024.
//

import Foundation
import SwiftUI

class CalendarManager: ObservableObject {
    @Published var currentDay: Date = Date()
    @Published var currentWeek: [Date] = []
    @Published var daysBefore: [Date] = []
    
    init(){
        fetchCurrentWeek()
    }
    
    func fetchCurrentWeek(){
        let today = Date()
        let calendar = Calendar.current
        
        let week = calendar.dateInterval(of: .weekOfMonth, for: today)
        
        guard let firstWeekDay = week?.start else{ return }
        
        (0...6).forEach{ day in
            if let weekDay = calendar.date(byAdding: .day, value: day, to: firstWeekDay){
                currentWeek.append(weekDay)
            }
            
        }
        
    }
    
    func isToday(date: Date) -> Bool{
        let calendar = Calendar.current
        
        return calendar.isDate(currentDay, inSameDayAs: date)
        
    }
    
    func daysBefore(date: Date) -> Bool {        
        return date.isPastDate

    }
    
    
    func extractDate(date: Date, format: String ) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: date)
        
    }
}

extension Date {
    var isPastDate: Bool {
        return self < Date()
    }
}
