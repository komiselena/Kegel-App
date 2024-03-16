//
//  SexologyCoursesView.swift
//  Kegel App
//
//  Created by Mac on 15.03.2024.
//

import SwiftUI

struct SexologyCoursesView: View {
    var body: some View {
        NavigationStack{
            ScrollView(.horizontal){
                HStack{
                    SelectCoursesButton()
                }
                
            }     
            .padding(.horizontal)

        }
    }
}

#Preview {
    SexologyCoursesView()
}

struct SelectCoursesButton: View {
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .frame(width: 103, height: 123)
                .foregroundStyle(.red)
                .opacity(0.8)
            RoundedRectangle(cornerRadius: 16)
                .frame(width: 100, height: 120)
                .foregroundStyle(Color("TopColorPlan"))
            VStack{
                Image(systemName: "hand.point.up.fill")
                    .foregroundStyle(.white)
                    .font(.title)
                    .padding(5)
                Text("""
Select
course
""")
                .lineLimit(2)
                .foregroundStyle(.white)
                .font(.system(size: 12, weight: .semibold))
                
            }
        }
    }
}
