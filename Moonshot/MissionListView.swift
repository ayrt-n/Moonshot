//
//  MissionListView.swift
//  Moonshot
//
//  Created by Ayrton Parkinson on 2024/07/20.
//

import SwiftUI

struct MissionListView: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var body: some View {
        List(missions) { mission in
            NavigationLink(value: mission) {
                HStack{
                    VStack {
                        Text(mission.displayName)
                            .font(.headline)
                            .foregroundStyle(.white)
                        Text(mission.formattedLaunchDate)
                            .font(.caption)
                            .foregroundStyle(.white.opacity(0.5))
                    }
                }
            }
            .listRowBackground(Color.darkBackground)
        }
        .navigationDestination(for: Mission.self) { selection in
            MissionView(mission: selection, astronauts: astronauts)
        }
        .listStyle(.plain)
        .background(.darkBackground)
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return MissionListView(missions: missions, astronauts: astronauts)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
