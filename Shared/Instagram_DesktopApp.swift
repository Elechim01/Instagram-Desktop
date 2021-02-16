//
//  Instagram_DesktopApp.swift
//  Shared
//
//  Created by Michele Manniello on 16/02/21.
//

import SwiftUI

@main
struct Instagram_DesktopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
//Hiding Focus Ring
extension NSTextField{
    open override var focusRingType: NSFocusRingType{
        get{.none}
        set{}
    }
}
