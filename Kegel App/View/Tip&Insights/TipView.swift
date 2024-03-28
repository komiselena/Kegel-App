//
//  TipsView.swift
//  Kegel App
//
//  Created by Mac on 17.03.2024.
//

import SwiftUI

struct TipView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color("TopColorPlan"))
                .frame(width: 360, height: 180)
                .opacity(0.9)
            
            VStack{
                HStack{
                    Circle()
                        .fill(.orange)
                        .frame(width: 12, height: 12)
                    Text("IMPORTANT")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .lineLimit(1)
                    
                }
                .offset(y: -5)
                .hLeading()
                .padding(.vertical, 15)

                
                Text("""
Sexual health depends on two key components: physical and psychological. Both of these play a vital role in overall sexual health.

""")
                .foregroundStyle(.white)
                .opacity(0.6)
                .offset(y: -5)
                .font(.system(size: 15))
                .hLeading()
                

                
            }
            .padding(.horizontal, 50)

        }
    }
}

#Preview {
    TipView()
}
