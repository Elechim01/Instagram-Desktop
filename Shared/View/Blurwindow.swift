//
//  Blurwindow.swift
//  Instagram Desktop
//
//  Created by Michele Manniello on 16/02/21.
//

import SwiftUI

struct Blurwindow: NSViewRepresentable{
    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.blendingMode = .behindWindow
        return view
    }
    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        
    }
}

