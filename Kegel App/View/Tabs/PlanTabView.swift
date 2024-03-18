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
                VStack{
                    HStack{
                        CurrentDate()
                        Spacer()
                        NavigationLink(destination: {
                            // --TODO--
                            
                            
                        }, label: {
                            Label("Info", systemImage: "info.circle.fill")
                                .labelStyle(.iconOnly)
                                .foregroundStyle(.white)
                                .font(.title3)
                            
                        })
                    }
                    .padding(.horizontal, 15)
                    CalenderPlanView()
                    Divider()
                        .background(.gray)
                    ScrollView{
                        
                        TitleKegelTrainingAndSeeAllButton()
                        NavigationLink(destination: {
                            // --TODO--
                            
                            
                        }, label: {
                            ActionWindowView()
                            
                        })
                        TitleSexologyCoursesAndSeeAllButton()
                        SexologyCoursesView()
                        TipsView()
                            .padding(.vertical)
                    }
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




