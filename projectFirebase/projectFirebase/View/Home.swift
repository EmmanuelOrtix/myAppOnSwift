//
//  Home.swift
//  projectFirebase
//
//  Created by Emmanuel Ortiz Matus on 26-06-21.
//

import SwiftUI

struct Home: View {
    
    @State private var index = "Xbox one"
    @State private var menu = false
    @State private var widthMenu = UIScreen.main.bounds.width
    @Environment(\.horizontalSizeClass) var width
    
    var device = UIDevice.current.userInterfaceIdiom
    
    func getColumns() -> Int {
        return (device == .pad) ? 3 : ((device == .phone && width == .regular) ? 3 : 1)
    }
    
    var body: some View {
        ZStack {
            VStack {
                NavBar(index: $index, menu: $menu)
                ZStack {
                    if index == "Xbox one" {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: getColumns()), spacing: 20){
                                ForEach(1...9, id:\.self){ _ in
                                    CardView()
                                        .padding(.all)
                                }
                            }
                        }
                    } else if index == "Xbox series S" {
                        VStack {
                            Color.green
                        }
                    } else {
                        VStack {
                            Color.red
                        }
                    }
                }
            }
            //termina navbar ipad
            if menu {
                HStack {
                    Spacer()
                    VStack {
                        HStack {
                            Spacer()
                            Button(action:{
                                withAnimation{
                                    menu.toggle()
                                }
                            }) {
                                Image.init(systemName: "xmark")
                                    .font(.system(size: 22, weight: .bold))
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                        .padding(.top, 50)
                        VStack(alignment: .trailing){
                            ButtonView(index: $index, menu: $menu, title: "Xbox one")
                            ButtonView(index: $index, menu: $menu, title: "Xbox series S")
                            ButtonView(index: $index, menu: $menu, title: "Xbox series X")
                        }
                        Spacer()
                    }
                    .frame(width: widthMenu - 150)
                    .background(Color.purple)
                }
            }
        }
        .background(Color.white.opacity(0.9))
    }
}

