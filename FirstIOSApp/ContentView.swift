//
//  ContentView.swift
//  FirstIOSApp
//
//  Created by Charlie Kisylia on 8/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "dollarsign.circle.fill")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Tip Calculator")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
