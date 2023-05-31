//
//  MotoTravelApp.swift
//  MotoTravel
//
//  Created by Ваня Науменко on 9.04.23.
//

import SwiftUI
import CoreData

@main
struct MotoTravelApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentViewTwo()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
