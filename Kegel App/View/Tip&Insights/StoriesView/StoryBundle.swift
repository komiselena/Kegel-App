//
//  Story.swift
//  Kegel App
//
//  Created by Mac on 21.03.2024.
//

import Foundation

struct StoryBundle: Identifiable, Hashable{
    var id = UUID().uuidString
    var title: String
    var isSeen: Bool = false
    var image: String
    var stories: [Story]
}

struct Story: Identifiable, Hashable{
    var id = UUID().uuidString
    var image: String
    var text: String?
}
