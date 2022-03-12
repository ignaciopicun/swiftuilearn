//
//  ContentView.swift
//  swiftuilearn
//
//  Created by Nacho on 3/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Spacer()
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26)
                .cornerRadius(20)
            Text("Swift UI for iOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("20 sections - 3 hours".uppercased())
                .foregroundColor(.secondary)
                .font(.footnote)
                .fontWeight(.semibold)
            Text(
                "Build an iOS app for iOS 15 with custom layouts, animations and ..."
            )
                .foregroundColor(.secondary)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.all, 20)
        .frame(height: 350)
        .background(Color("Background"))
        .cornerRadius(30)
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
        .padding(.horizontal, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
