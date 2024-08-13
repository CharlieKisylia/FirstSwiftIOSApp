//
//  ContentView.swift
//  FirstIOSApp
//
//  Created by Charlie Kisylia on 8/13/24.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "dollarsign.circle.fill")
                    .imageScale(.large)
                    .foregroundStyle(.black, .green)
                    .font(.title)
                Text("Tip Calculator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            HStack {
                Text("$").bold()
                TextField("Amount", text: $total)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
