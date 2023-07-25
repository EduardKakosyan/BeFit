//
//  Step.swift
//  BeFit
//
//  Created by Eduard Kakosyan on 2023-07-18.
//

import SwiftUI

// Daily Steps Bar Graph Model and Sample Data

struct Step: Identifiable{
    
    var id = UUID().uuidString
    var value: CGFloat
    var key: String
    var color: Color = Color("Blue")
    
}

var steps: [Step] = [

    Step(value: 300, key: "4-5pm"),
    Step(value: 240, key: "4-5am", color: Color("Green")),
    Step(value: 300, key: "8-9pm"),
    Step(value: 240, key: "1-3pm", color: Color("Green")),
    Step(value: 300, key: "12-4pm"),
    Step(value: 240, key: "4-5pm", color: Color("Green")),
    Step(value: 300, key: "5-6pm"),
    Step(value: 240, key: "7-8am", color: Color("Green"))    
]

