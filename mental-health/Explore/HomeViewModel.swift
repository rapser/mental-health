//
//  HomeViewModel.swift
//  pinterest
//
//  Created by miguel tomairo on 11/03/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var totalBreathingTime: String = "36 Min"
    @Published var totalYogaTime: String = "180 Min"
    @Published var totalMeditationTime: String = "8 Min"
    @Published var achievements: [Achievement] = [
        Achievement(title: "1 day", isCompleted: true),
        Achievement(title: "3 days", isCompleted: true),
        Achievement(title: "10 days", isCompleted: false),
        Achievement(title: "15 days", isCompleted: false)
    ]
    
    struct Achievement {
        let title: String
        let isCompleted: Bool
    }
}
