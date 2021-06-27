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
    
    var body: some View {
        ZStack {
            VStack {
                NavBar(index: $index, menu: $menu)
            }
        }
    }
}

