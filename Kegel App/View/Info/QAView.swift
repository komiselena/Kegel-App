//
//  Q&AView.swift
//  Kegel App
//
//  Created by Mac on 27.03.2024.
//

import SwiftUI

struct QAView: View {
    @StateObject var qaVM = QAViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                Color("TopColorPlan")
                    .ignoresSafeArea()
                ScrollView{
                    ForEach(qaVM.qas, id: \.self){ qa in
                        VStack{
                            Text(qa.question)
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .hLeading()
                            Text(qa.answer)
                                .font(.callout)
                                .foregroundStyle(.white)
                                .opacity(0.9)
                                .hLeading()

                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("FAQs")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarRole(.editor)
        }
    }
}



#Preview {
    QAView()
}
