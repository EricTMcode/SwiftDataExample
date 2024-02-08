//
//  SwiftDataExampleApp.swift
//  SwiftDataExample
//
//  Created by Eric on 07/02/2024.
//

import SwiftData
import SwiftUI

@main
struct SwiftDataExampleApp: App {
    
//    let container: ModelContainer = {
//        let schema = Schema([Expense.self])
//        let container = try! ModelContainer(for: schema, configurations: [])
//        return container
//    }()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
//        .modelContainer(container)
        .modelContainer(for: Expense.self)
    }
}
