//
//  CardView.swift
//  projectFirebase
//
//  Created by Emmanuel Ortiz Matus on 26-06-21.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("image")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Sinon")
                .font(.title)
                .bold()
                .foregroundColor(.black)
                
        }.padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
