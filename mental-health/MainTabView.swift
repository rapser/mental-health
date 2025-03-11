//
//  MainTabView.swift
//  pinterest
//
//  Created by miguel tomairo on 11/03/25.
//

import SwiftUI

struct MainTabView: View {
    @StateObject private var homeViewModel = HomeViewModel()
    
    var body: some View {
        TabView {
            // Home View (Today)
            HomeView(viewModel: homeViewModel)
                .tabItem {
                    Label("Today", systemImage: "calendar.day.timeline.leading")
                        .accessibilityLabel("Today")
                }
            
            // Therapy View
            TherapyView()
                .tabItem {
                    Label("Therapy", systemImage: "face.smiling.fill")
                        .accessibilityLabel("Therapy")
                }
            
            // Explore View
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                        .accessibilityLabel("Explore")
                }
            
            // Profile View
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                        .accessibilityLabel("Profile")
                }
        }
        .accentColor(.purple) // Cambia el color del ícono seleccionado
    }
}

#Preview {
    MainTabView()
}
