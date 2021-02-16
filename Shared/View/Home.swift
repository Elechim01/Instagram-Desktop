//
//  Home.swift
//  Instagram Desktop (iOS)
//
//  Created by Michele Manniello on 16/02/21.
//

import SwiftUI
//Gradient
let gradient = LinearGradient(gradient:.init(colors: [Color.gray,Color.blue]), startPoint: .leading, endPoint: .trailing)
struct Home: View {
    var screen = NSScreen.main!.visibleFrame
    var body: some View {
        HStack(spacing: 0){
            SliderView()
            MainView()
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen.width/1.4, height: screen.height - 60)
        .background(Blurwindow())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
