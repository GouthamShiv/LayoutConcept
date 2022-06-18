//
//  LayoutConceptApp.swift
//  LayoutConcept
//
//  Created by Goutham on 18/06/22.
//

import SwiftUI

@main
struct LayoutConceptApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ContentViewModel())
        }
    }
}
