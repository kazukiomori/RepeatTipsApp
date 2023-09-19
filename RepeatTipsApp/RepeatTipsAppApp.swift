//
//  RepeatTipsAppApp.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/07/24.
//

import SwiftUI

@main
struct RepeatTipsAppApp: App {
    
    @StateObject private var dateController = DataManagement()
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            CreateThemaView()
                .environment(\.managedObjectContext, dateController.container.viewContext)
        }
    }
}
