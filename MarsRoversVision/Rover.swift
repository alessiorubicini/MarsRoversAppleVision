//
//  Rover.swift
//  MarsRoversVision
//
//  Created by Alessio Rubicini on 30/06/23.
//

import Foundation
import SwiftUI

struct Rover: Equatable, Hashable {
    var name: String
    var missionDate: String
    var description: String
    var size: CGFloat
}

extension Rover {
    static let sampleRovers: [Rover] = [
        Rover(name: "Perseverance", missionDate: "2021 – Present", description: "Perseverance is equipped with advanced scientific instruments and technology, including a drill to collect rock samples, a suite of cameras, and an experimental helicopter called Ingenuity. Its primary mission is to search for signs of ancient microbial life, study the planet's geology and climate, and pave the way for future human exploration of Mars.", size: 230),
        Rover(name: "Curiosity", missionDate: "2012 – Present", description: "Curiosity is a car-sized rover equipped with various scientific instruments designed to study the Martian environment, geology, and climate. Its primary goal is to determine if Mars has ever had the conditions necessary to support microbial life.", size: 320),
        Rover(name: "Opportunity", missionDate: "2004 – 2018", description: "The rover extensively explored the Martian surface, studying the geology, mineralogy, and history of the planet. Its discoveries provided valuable insights into the past presence of water on Mars and contributed to our understanding of the planet's potential habitability", size: 310),
        Rover(name: "Sojourner", missionDate: "1997", description: "It was the first successful Mars rover and the first robotic vehicle to explore the surface of another planet. Sojourner weighed about 23 pounds (10.6 kilograms) and was equipped with a variety of scientific instruments, including cameras and spectrometers, to study the Martian environment. ", size: 200)
    ]

}
