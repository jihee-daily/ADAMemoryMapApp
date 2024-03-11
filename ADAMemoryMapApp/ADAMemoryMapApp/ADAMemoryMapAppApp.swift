//
//  ADAMemoryMapAppApp.swift
//  ADAMemoryMapApp
//
//  Created by kimjihee on 3/12/24.
//

import SwiftUI

@main
struct ADAMemoryMapAppApp: App {
//    let persistenceController = PersistenceController.shared
    
    @StateObject private var vm = LocationsViewModel()

    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
            
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
