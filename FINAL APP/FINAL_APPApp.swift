//
//  FINAL_APPApp.swift
//  FINAL APP
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

@main
struct FINAL_APPApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomePage()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
