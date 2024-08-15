//
//  ContentView.swift
//  FirstIOSApp
//
//  Created by Charlie Kisylia on 8/13/24.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
    @State var tipPercent = 15.0
    let tipSplit = [1, 2, 3, 4, 5, 6, 7]
    @State var selectedTip = 1
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
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))")
                Text("%")
            }
            if let totalNum = Double(total) {
                Text("Tip Amount: $\(totalNum * tipPercent / 100, specifier: "%0.2f")")
                    .fontWeight(.bold)
            } else {
                Text("Please put a number in the amount field")
                    .fontWeight(.bold)
            }
            HStack {
                Text("Would you like to to split the tip?")
                    .fontWeight(.bold)
                Picker("Split the bill", selection: $selectedTip) {
                    ForEach(tipSplit, id: \.self) { tip in
                        Text("\(tip)")
                            .font(.system(size: 20))
                    }
                }
                .pickerStyle(MenuPickerStyle()).scaleEffect(1.5)
            }
            HStack {
                if let totalNum = Double(total) {
                    Text("Each person should tip: $\((totalNum * tipPercent / 100) / Double(selectedTip), specifier: "%.2f")")
                        .fontWeight(.bold)
                }
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
