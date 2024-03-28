//
//  TitleAndButtonFunc.swift
//  Kegel App
//
//  Created by Mac on 19.03.2024.
//

import Foundation
import SwiftUI

class TitleAndSeeAllButton: ObservableObject {
    
    public func TitleAndSeeAllButton<Content: View>(title: String, @ViewBuilder navDestination: @escaping () -> Content) -> some View {
        var body: some View {
            NavigationStack{
                HStack{
                    Text(title)
                        .foregroundStyle(.white)
                        .font(.headline)
                    Spacer()
                    
                    NavigationLink(destination: navDestination){
                        HStack{
                            Text("See All")
                            Image(systemName: "chevron.forward")
                        }
                        .foregroundStyle(.white)
                        
                    }
                    
                }
                .font(.subheadline)
                .padding()
            }

        }
        
        return body
    }
}
