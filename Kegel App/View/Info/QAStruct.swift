//
//  QAStruct.swift
//  Kegel App
//
//  Created by Mac on 28.03.2024.
//

import Foundation

struct QA: Identifiable, Hashable {
    var id = UUID()
    var question: String
    var answer: String
}
