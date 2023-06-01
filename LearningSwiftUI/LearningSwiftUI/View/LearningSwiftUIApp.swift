//
//  LearningSwiftUIApp.swift
//  LearningSwiftUI
//
//  Created by Kagan Kuscu on 23.05.23.
//

import SwiftUI

@main
struct LearningSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Journal", systemImage: "book")
                    }
                
                SettingsView()
                    .tabItem{
                        Label("Settings", systemImage: "gear")
                    }
            }
        }
    }
}
