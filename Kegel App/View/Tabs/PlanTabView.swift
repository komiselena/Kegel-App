//
//  PlanTabView.swift
//  Kegel App
//
//  Created by Mac on 08.03.2024.
//

import SwiftUI

struct PlanTabView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [Color("TopColorPlan"), Color("BottomColorPlan")], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView{
                    HStack{
                        CurrentDate()
                        Spacer()
                        NavigationLink(destination: {
                            // --TODO--
                            
                            
                        }, label: {
                            Label("Info", systemImage: "info.circle.fill")
                                .labelStyle(.iconOnly)
                                .foregroundStyle(.white)
                                .font(.headline)

                        })
                    }
                    .padding(.horizontal, 15)
                    CalenderPlanView()
                    Divider()
                        .background(.gray)
                    TitleKegelTrainingAndSeeAllButton()
                    NavigationLink(destination: {
                        // --TODO--
                        
                        
                    }, label: {
                        ActionWindowView()

                    })
                    TitleSexologyCoursesAndSeeAllButton()
                    SexologyCoursesView()
                    
                }
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




