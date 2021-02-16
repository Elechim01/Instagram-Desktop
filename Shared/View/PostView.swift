//
//  PostView.swift
//  Instagram Desktop
//
//  Created by Michele Manniello on 16/02/21.
//

import SwiftUI

struct PostView: View {
    var image : String
    var body: some View {
        
        GeometryReader{ reader in
            VStack{
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: reader.frame(in:.global).height, height: 250)
                    .cornerRadius(10)
                HStack{
//                    Use Your Post Model Data Here
                    Image("mela")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .padding(5)
                        .background(Circle().stroke(gradient,lineWidth: 2))
                        .clipShape(Circle())
                    Text("Mela")
                        .foregroundColor(.white)
                    Spacer(minLength: 0)
                    Button(action: {}, label: {
                        Label(
                            title: { Text("1.4K") },
                            icon: { Image(systemName: "suit.heart")})
                    })
                    .buttonStyle(PlainButtonStyle())
                    Button(action: {}, label: {
                        Label(
                            title: { Text("556") },
                            icon: { Image(systemName: "message")})
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                }
                .padding(.horizontal)
            }
        }
        .frame(height: 300)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
