//
//  BeFitWatch.swift
//  BeFitWatch
//
//  Created by Eduard Kakosyan on 2023-07-10.
//

import AppIntents

struct BeFitWatch: AppIntent {
    static var title: LocalizedStringResource = "BeFitWatch"
    
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
