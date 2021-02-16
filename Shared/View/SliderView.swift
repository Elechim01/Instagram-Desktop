//
//  SliderView.swift
//  Instagram Desktop
//
//  Created by Michele Manniello on 16/02/21.
//

import SwiftUI

struct SliderView: View {
    var screen = NSScreen.main!.visibleFrame
    @State var selected = "Explore"
    @Namespace var animation 
    var body: some View {
        VStack(spacing:15){
            HStack(spacing: 10){
                Image("Instagram")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                Text("Instagram")
                    .font(.system(size: 30))
                    Spacer()
                    
            }
            .padding()
            .padding(.top,20)
            Image("mela")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 65, height: 65)
                .clipShape(Circle())
                .padding(5)
                .background(
                    Circle()
                        .stroke(gradient, lineWidth: 2)
                )
                .clipShape(Circle())
            Text("Mela")
                .font(.title)
                .foregroundColor(.white)
            Text("@imela")
                .foregroundColor(.gray)
//                Followers
            HStack{
                VStack(spacing:8){
                    Text("1.4K")
                        .foregroundColor(.white)
                    Text("Posts")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity)
                Divider()
                VStack(spacing:8){
                    Text("1.9M")
                        .foregroundColor(.white)
                    Text("Followers")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity)
                Divider()
                VStack(spacing:8){
                    Text("22")
                        .foregroundColor(.white)
                    Text("Following")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity)
                Divider()
            }
            .frame(height: 50)
//                Tab Buttons
            Group{
                TabButton(image: "rectangle.3.offgrid", title: "Explore", selected: $selected, animation: animation)
                    .padding(.top)
                TabButton(image: "magnifyingglass", title: "Feed", selected: $selected, animation: animation)
                 
                TabButton(image: "bell", title: "Notification", selected: $selected, animation: animation)
                
                TabButton(image: "paperplane", title: "Direct", selected: $selected, animation: animation)
                    
                TabButton(image: "play.tv", title: "IGTV", selected: $selected, animation: animation)
                    
                TabButton(image: "gear", title: "Settings", selected: $selected, animation: animation)
            }
            Spacer()
            
            Divider()
                .padding(.horizontal,20)
            Spacer()
            TabButton(image: "arrow.down.forward.square", title: "Logout", selected:.constant(""), animation: animation)
                .padding(.bottom,20)
        }
        .frame(maxWidth:(screen.width / 1.4)/3.5 , maxHeight:.infinity)
        .background(Blurwindow())
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
