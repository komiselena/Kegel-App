//
//  CalenderPlan.swift
//  Kegel App
//
//  Created by Mac on 11.03.2024.
//

import SwiftUI

struct CalenderPlanView: View {
    @StateObject var calendarManager = CalendarManager()
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 37){
                    ForEach(calendarManager.currentWeek,id: \.self ) { day in
                        VStack(spacing: 6){
                            Circle()
                                .fill(.red)
                                .frame(width: 10, height: 10)
                                .opacity(calendarManager.isToday(date: day) ? 1 : 0)
                                
                            Text(calendarManager.extractDate(date: day, format: "d"))
                                .font(.callout)
                                .fontWeight(.semibold)
                                .foregroundStyle(calendarManager.isToday(date: day) ? .red : calendarManager.daysBefore(date: day) ? .white : .gray)
                            
                            Text(String(calendarManager.extractDate(date: day, format: "EEEEEE")))
                                .textCase(.lowercase)
                                .foregroundStyle(calendarManager.isToday(date: day) ? .red : calendarManager.daysBefore(date: day) ? .gray : Color.secondary)
                                .font(.callout)
                                .fontDesign(.rounded)
                        }
                        

                    }
                }
                .padding(.horizontal)
            }
        }
    }
}


#Preview {
    ZStack{
        Color.black
            .ignoresSafeArea()
        CalenderPlanView()
    }
}
