//
//  NixtioView.swift
//  pinterest
//
//  Created by miguel tomairo on 11/03/25.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemBackground).edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Image("NixtioLogo")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(20)
                        Text("Nixtio")
                            .font(.headline)
                        
                        Spacer()
                        
                        Button(action: {
                            // Action for settings button
                        }) {
                            Image(systemName: "gear")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .clipShape(Circle())
                        }
                    }
                    
                    
                    
                    HStack {
                        Text("Your goal:")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Text("Reduce Negativity")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 20) {
                            StatCard(title: "Total breathing time", value: viewModel.totalBreathingTime, image: "breathingImage")
                            StatCard(title: "Total yoga time", value: viewModel.totalYogaTime, image: "yogaImage")
                            StatCard(title: "Total meditation time", value: viewModel.totalMeditationTime, image: "meditationImage")
                            
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Text("Achievements")
                                        .font(.headline)
                                    Text("3/8")
                                        .font(.subheadline)
                                        .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(10)
                                }
                                
                                Text("Complete at least one session of mindful breathing, calming meditation, or revitalizing yoga every single day to unlock new levels of inner peace and well-being. You can reduce stress and nurture a deeper connection with yourself.")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                
                                HStack {
                                    ForEach(viewModel.achievements, id: \.title) { achievement in
                                        AchievementView(title: achievement.title, isCompleted: achievement.isCompleted)
                                    }
                                }
                            }
                        }
                    }
                    
                    Spacer()
                }
                .padding()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct StatCard: View {
    let title: String
    let value: String
    let image: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.caption)
                    .foregroundColor(.white)
                HStack {
                    Image(systemName: "timer")
                        .foregroundColor(.white)
                    Text(value)
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            Spacer()
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 60)
                .cornerRadius(10)
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [.purple, .yellow]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct AchievementView: View {
    let title: String
    let isCompleted: Bool
    
    var body: some View {
        VStack {
            Circle()
                .fill(isCompleted ? Color.green : Color.gray)
                .frame(width: 50, height: 50)
                .overlay(
                    Image(systemName: "checkmark")
                        .foregroundColor(.white)
                        .opacity(isCompleted ? 1 : 0)
                )
            Text(title)
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
