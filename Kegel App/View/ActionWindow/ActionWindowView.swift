//
//  ActionWindowBiew.swift
//  Kegel App
//
//  Created by Mac on 13.03.2024.
//

import SwiftUI

struct ActionWindowView: View {
    @ScaledMetric var actionWindowHeight: CGFloat = 330
    var body: some View {
        NavigationStack{
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .padding(.horizontal, 15)
                    .frame(width: 390, height: actionWindowHeight)
                    .foregroundStyle(.black)
                VStack{
                    HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 5)
                                .fill(.gray)
                                .opacity(0.3)
                                .frame(width: 60, height: 25, alignment: .topLeading)
                            Text("LEVEL 1")
                                .foregroundStyle(.white)
                                .font(.system(size: 10))
                                
                                
                        }
                        Spacer()
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(.gray)
                                .opacity(0.3)
                                .frame(width: 100, height: 25, alignment: .topLeading)
                            HStack{
                                Text("IN PROGRESS")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 10))
                                Circle()
                                    .fill(.red)
                                    .frame(width: 7)
                            }
                        }
                    }
                    .offset(y: -60)
                    .padding(35)
                    
                    
                    VStack(alignment: .leading) {
                        Text("First Steps to Kegel")
                            .font(.title2)
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                        Text("Completed training days: 0/7")
                            .font(.subheadline)
                            .foregroundStyle(.gray)

                    }
                    .hLeading()
                    .padding(35)
                    .offset(y: 50)

                    Capsule()
                        .frame(width: 330, height: 8)
                        .foregroundStyle(Color("TopColorPlan"))
                        .offset(y: 20)


                }
                
            }
            .toolbarRole(.editor)

        }
    }
}

#Preview {
    ActionWindowView()
}
