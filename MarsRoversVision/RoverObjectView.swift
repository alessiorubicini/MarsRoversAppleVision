//
//  RoverObjectView.swift
//  MarsRoversVision
//
//  Created by Alessio Rubicini on 30/06/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct RoverObjectView: View {
    
    var name: String
    
    var body: some View {
        Model3D(named: name, bundle: realityKitContentBundle) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case let .failure(error):
                Text(error.localizedDescription)
            case let .success(model):
                model
                    .resizable()
                    .scaledToFit()
            @unknown default:
                fatalError()
            }
        }
    }
}

#Preview {
    RoverObjectView(name: "Sojourner")
}
