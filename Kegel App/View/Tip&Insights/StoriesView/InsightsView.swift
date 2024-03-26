//
//  StoryView.swift
//  Kegel App
//
//  Created by Mac on 21.03.2024.
//

import SwiftUI

struct InsightsView: View {
    @StateObject private var storyData = StoryViewModel()
    var body: some View {
        NavigationStack{
            HStack{
                ScrollView(.horizontal){
                    HStack{
                        ForEach($storyData.stories) { $bundle in
                            StoryProfileView(bundle: $bundle)
                                .environmentObject(storyData)
                        }
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $storyData.showStory) {
            StoryView()
                .environmentObject(storyData)
        }


    }
}

#Preview {
    InsightsView()
}

struct StoryProfileView: View {
    @Binding var bundle: StoryBundle
    @EnvironmentObject var storyData: StoryViewModel

    
    var body: some View{
        HStack{
            ZStack{
                Image(bundle.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 125, height: 145)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 125, height: 60)
                        .foregroundStyle(.black)
                        .opacity(0.8)
                        .offset(y: 43)
                        Text(bundle.title)
                            .foregroundStyle(.white)
                            .offset(y: 35)
                            .font(.caption2)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .hLeading()
                            .padding(.top, 15)
                            .padding(.horizontal, 10)
                            .lineLimit(3)
                        
                }
            }
            .padding(.leading, 15)
            .padding(.bottom)
            .onTapGesture {
                bundle.isSeen = true
                storyData.currentStory = bundle.id
                storyData.showStory = true
            }
            
        }
    }
}
