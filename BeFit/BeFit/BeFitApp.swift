//
//  BeFitApp.swift
//  BeFit
//
//  Created by Eduard Kakosyan on 2023-07-10.
//

import SwiftUI

@main
struct BeFitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
