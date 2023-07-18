//
//  Students.swift
//  WeSplit(100daysSU)
//
//  Created by Artem on 17.07.2023.
//

import SwiftUI

struct Students: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct Students_Previews: PreviewProvider {
    static var previews: some View {
        Students()
    }
}
