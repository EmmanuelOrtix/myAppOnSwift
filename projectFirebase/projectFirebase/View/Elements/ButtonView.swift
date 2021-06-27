//
//  ButtonView.swift
//  projectFirebase
//
//  Created by Emmanuel Ortiz Matus on 26-06-21.
//

import SwiftUI

struct ButtonView: View {
    
    @Binding var index: String
    @Binding var menu: Bool
    var title: String
    
    var body: some View {
        Button(action: {
            withAnimation{
                index = title
            }
        }){
            Text(title)
                .font(.title)
                .fontWeight(index == title ? .bold : .none)
                .foregroundColor(index == title ? .white : Color.white.opacity(0.6))
        }
    }
}

