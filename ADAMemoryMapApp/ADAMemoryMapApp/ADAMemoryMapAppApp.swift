//
//  ADAMemoryMapAppApp.swift
//  ADAMemoryMapApp
//
//  Created by kimjihee on 3/12/24.
//

import SwiftUI

@main
struct ADAMemoryMapAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
