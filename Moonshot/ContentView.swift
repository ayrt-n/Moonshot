//
//  ContentView.swift
//  Moonshot
//
//  Created by Ayrton Parkinson on 2024/07/18.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var showListView = false
    
    var body: some View {
        NavigationStack {
            Group {
                if showListView {
                    MissionListView(missions: missions, astronauts: astronauts)
                } else {
                    MissionGridView(missions: missions, astronauts: astronauts)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button {
                    showListView.toggle()
                } label: {
                    Image(systemName: showListView ? "square.grid.2x2" : "list.dash")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
