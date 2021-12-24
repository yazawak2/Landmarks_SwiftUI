//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Kojiro Yazawa on 2021/12/08.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
