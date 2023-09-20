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
    @FetchRequest(sortDescriptors: [SortDescriptor(\.startDate, order: .reverse)]) var thema: FetchedResults<Thema>
    var body: some Scene {
        WindowGroup {
            if thema.count == 0 {
                CreateThemaView()
                    .environment(\.managedObjectContext, dateController.container.viewContext)
            } else {
                ContentView()
                    .environment(\.managedObjectContext, dateController.container.viewContext)
            }
        }
    }
}
