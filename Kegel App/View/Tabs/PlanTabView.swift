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
                    CurrentDate()
                    CalenderPlanView()
                    Divider()
                        .background(.gray)
                    TitleKegelTrainingAndSeeAllButton()
                    NavigationLink(destination: {
                        // --TODO--
                        
                        
                    }, label: {
                        ActionWindowView()

                    })
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



struct TitleKegelTrainingAndSeeAllButton: View {
    var body: some View {
        HStack{
            Text("Kegel Training")
                .font(.title3)
                .foregroundStyle(.white)
            Spacer()
            
            NavigationLink(destination: {
                // Navigation destination here
                // --TODO--
                
                
                
            }, label: {
                HStack{
                    Text("See All")
                    Image(systemName: "chevron.forward")
                }
                .foregroundStyle(.white)
            })
            
        }
        .padding()
    }
}
