//
//  TitleSexologyCoursesAndSeeAllButton.swift
//  Kegel App
//
//  Created by Mac on 15.03.2024.
//

import SwiftUI

struct TitleSexologyCoursesAndSeeAllButton: View {
    var body: some View {
        HStack{
            Text("Sexology Courses")
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

#Preview {
    TitleSexologyCoursesAndSeeAllButton()
}
