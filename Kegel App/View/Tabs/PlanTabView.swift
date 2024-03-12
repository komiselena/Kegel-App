//
//  PlanTabView.swift
//  Kegel App
//
//  Created by Mac on 08.03.2024.
//

import SwiftUI

struct PlanTabView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("TopColorPlan"), Color("BottomColorPlan")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView{
                CurrentDate()
                CalenderPlanView()
                Divider()
                    .background(.gray)
                
            }
        }
    }
    
}

extension View{
    func hLeading() -> some View{
        self
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    PlanTabView()
}

struct CurrentDate: View {
    var body: some View {
        VStack(){
            Text(Date().formatted(date: .complete, time: .omitted))
                .foregroundStyle(.white)
                .font(.callout)
                .hLeading()
                .padding()
            
        }
    }
}
