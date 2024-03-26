//
//  PlanTabView.swift
//  Kegel App
//
//  Created by Mac on 08.03.2024.
//

import SwiftUI

struct PlanTabView: View {
    @ObservedObject var titleSeeAllBut = TitleAndSeeAllButton()
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
                        
                        //MARK: Action Window
                        titleSeeAllBut.TitleAndSeeAllButton(title: "Kegel Training", navDestination: {
                            // Nav Destination here
                            // --TODO--
                            
                        })
                        
                        NavigationLink(destination: {
                            // --TODO--
                            
                        }, label: {
                            ActionWindowView()
                            
                        })
                        
                        
                        //MARK: TIPS&INSIGHTS
                        
                        TipView()
                            .padding(.vertical)
                        titleSeeAllBut.TitleAndSeeAllButton(title: "Latest Insights", navDestination: {
                            // Nav Destination here
                            // --TODO--
                            
                        })
                        InsightsView()
                        
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




