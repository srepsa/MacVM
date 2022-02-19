//
//  MacVMApp.swift
//  MacVM
//
//  Created by Khaos Tian on 6/28/21.
//

import SwiftUI

@main
struct MacVMApp: App {
    var body: some Scene {
        DocumentGroup {
            VMDocument()
        } editor: { configuration in
            VMView(
                document: configuration.document,
                fileURL: configuration.fileURL
            )
        }
        .commands {
              CommandMenu("VM") {
                  let recoveryBootBinding = Binding<Bool>(
                      get: { return true },
                      set: { _,_ in } )
                  Toggle(isOn: recoveryBootBinding) {
                      Text("Boot into Recovery")
                  }
              }
            }
    }
}
