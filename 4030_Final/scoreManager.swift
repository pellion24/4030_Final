//
//  scoreManager.swift
//  4030_Final
//
//  Created by Ashvij Hosdurg on 5/1/25.
//
import SwiftUI

class ScoreManager: ObservableObject {
    @Published var score: Int = 0
    
    func returnScore() -> Int {
        return score
    }
    
    func addtoScore() {
        score = score + 1
    }
}
