//
//  POSApp.swift
//  POS
//
//  Created by Ronaldo Andre Vargas Huaman on 6/12/21.
//

import SwiftUI

@main
struct POSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            AgradecimientoView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
