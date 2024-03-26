//
//  StoryViewModel.swift
//  Kegel App
//
//  Created by Mac on 21.03.2024.
//

import Foundation

class StoryViewModel: ObservableObject {
    
    @Published var stories: [StoryBundle] = [
    StoryBundle(title: """
How Do Kegel
Exercises Boost
Your Orgasm
""",
    image: "volcano", stories: [Story(image: "volcano"), Story(image: "lion")]),
    
    StoryBundle(title: """
                Amazing Food
                History Facts You
                Should Know
                """,
                image: "forest", stories: [
    Story(image: "waterfall")
    ])
    
    
    
    ]
    
    @Published var showStory: Bool = false
    // that will be unique story bundle id
    @Published var currentStory: String = ""
}
