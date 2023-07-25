//
//  ContentView.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/07/24.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 1
    var body: some View {
        TabView(selection: $selection) {
            RecordView()
                .tabItem {
                    Label("記録", systemImage: "person.circle")
                }
                .tag(1)
            ReviewView()
                .tabItem {
                    Label("振り返り", systemImage: "calendar.circle")
                }
                .tag(2)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
