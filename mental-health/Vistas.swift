//
//  TabBar.swift
//  pinterest
//
//  Created by miguel tomairo on 11/03/25.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            Text("Today")
                .font(.largeTitle)
                .foregroundColor(.purple)
        }
    }
}

struct TherapyView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            Text("Therapy")
                .font(.largeTitle)
                .foregroundColor(.orange)
        }
    }
}

struct ExploreView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            Text("Explore")
                .font(.largeTitle)
                .foregroundColor(.blue)
        }
    }
}

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            Text("User Profile")
                .font(.largeTitle)
                .foregroundColor(.green)
        }
    }
}
