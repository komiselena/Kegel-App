//
//  CurrentDate.swift
//  Kegel App
//
//  Created by Mac on 14.03.2024.
//

import SwiftUI

struct CurrentDate: View {
    var body: some View {
        VStack(){
            Text(Date().formatted(date: .complete, time: .omitted))
                .foregroundStyle(.white)
                .font(.callout)
            
        }
    }
}

#Preview {
    CurrentDate()
}
