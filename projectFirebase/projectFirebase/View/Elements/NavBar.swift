//
//  NavBar.swift
//  projectFirebase
//
//  Created by Emmanuel Ortiz Matus on 26-06-21.
//

import SwiftUI

struct NavBar: View {
    
    @Binding var index: String
    @Binding var menu: Bool
    
    var device = UIDevice.current.userInterfaceIdiom
    
    var body: some View {
        HStack {
            Text("My Games")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .font(.system(size: device == .phone ? 25 : 35))
            Spacer()
            
            if(device == .pad){
                //menu ipad
                HStack(spacing: 25){
                    ButtonView(index: $index, menu: $menu, title: "Xbox one")
                    ButtonView(index: $index, menu: $menu, title: "Xbox series S")
                    ButtonView(index: $index, menu: $menu, title: "Xbox series X")
                }
            }else{
                //menu iphone
                Button(action: {
                    withAnimation {
                        menu.toggle()
                    }
                }){
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 26))
                        .foregroundColor(.white)
                }
            }
        }
        .padding(.top, 30)
        .padding()
        .background(Color.purple)
    }
}

