//
//  GTLink_Sign_UpApp.swift
//  GTLink-Sign-Up
//
//  Created by River Pease on 10/24/22.
//

import SwiftUI

@main
struct GTLink_Sign_UpApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
