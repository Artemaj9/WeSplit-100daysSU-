//
//  ContentView.swift
//  WeSplit(100daysSU)
//
//  Created by Artem on 17.07.2023.
//

import SwiftUI

struct ContentView: View {
   
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    @State private var tapCount = 0
    @State private var name = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your name", text: $name)
                    Text("Your name is \(name)")
                }
                Button("Tap Count: \(tapCount)") {
                    tapCount += 1
                }
                
                ForEach(0..<100) { Text("Row \($0)")
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
      
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
