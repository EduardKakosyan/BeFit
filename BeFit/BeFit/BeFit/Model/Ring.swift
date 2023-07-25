//
//  Ring.swift
//  BeFit
//
//  Created by Eduard Kakosyan on 2023-07-18.
//

import SwiftUI

//Tracking Rings and SAMPLE DATA
//SAMPLE DATA IS CURRENTLY USED FOR DESIGN PURPOSES

struct Ring: Identifiable{
    var id = UUID().uuidString
    var progress: CGFloat
    var value: String
    var keyIcon: String
    var keyColor: Color
    var isText: Bool = false
}

var rings: [Ring] = [
    Ring(progress: 72, value: "Steps", keyIcon: "figure.walk", keyColor: Color.green),
    Ring(progress: 72, value: "Calories", keyIcon: "flame.fill", keyColor: Color.red),
    Ring(progress: 91, value: "Badminton", keyIcon: "🏸", keyColor: Color.blue, isText: true)
]
