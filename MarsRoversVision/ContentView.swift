//
//  ContentView.swift
//  MarsRoversVision
//
//  Created by Alessio Rubicini on 30/06/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State var marsRovers = Rover.sampleRovers
    @State private var selectedRover: Rover?  = nil

    var body: some View {
        NavigationSplitView {
            List(selection: $selectedRover) {
                ForEach(marsRovers, id: \.self) { rover in
                    Text(rover.name)
                }
            }
            .navigationTitle("Mars Rovers")
        } detail: {
            if(selectedRover != nil) {
                TimelineView(.animation) { context in
                    VStack {
                        VStack(alignment: .leading, spacing: 15) {
                            Text(selectedRover!.missionDate)
                                .font(.title3)
                            
                            Text(selectedRover!.description)
                        }
                        
                        RoverObjectView(name: selectedRover!.name)
                            .frame(width: selectedRover!.size)
                            .navigationTitle(selectedRover!.name)
                            .rotation3DEffect(
                                Rotation3D(
                                    angle: Angle2D(degrees: 5 * context.date.timeIntervalSinceReferenceDate),
                                    axis: .y
                                )
                            )
                            .padding(.top, selectedRover!.size/6)
                        
                        Spacer()
                    }.padding(.horizontal, 30)
                }
            } else {
                Text("Select a rover")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
