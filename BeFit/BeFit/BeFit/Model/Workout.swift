//
//  Workout.swift
//  BeFit
//
//  Created by Eduard Kakosyan on 2023-07-20.
//

import SwiftUI

// Daily Steps Bar Graph Model and Sample Data

struct Workout: Identifiable{
    
    var id = UUID().uuidString
    var restValue: CGFloat
    var activeValue: CGFloat
    var calories: CGFloat
}


//NOTE: TEMP VALUES,NEED TO IMPLEMENT DATA STRUCTURES
var workouts: [Workout] = [
    Workout(restValue: 6.23, activeValue: 10.32, calories: 2003),
    Workout(restValue: 6.23, activeValue: 10.32, calories: 2003),
    Workout(restValue: 6.23, activeValue: 10.32, calories: 2003),
    Workout(restValue: 6.23, activeValue: 10.32, calories: 2003)
]
