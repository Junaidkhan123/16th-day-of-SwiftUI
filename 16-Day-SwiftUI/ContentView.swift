//
//  ContentView.swift
//  16-Day-SwiftUI
//
//  Created by Jhon Khan on 26/06/2020.
//  Copyright © 2020 Jhon Khan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    let student = ["Junaid", "Sheraz", "Zafar", "Amjad"]
    @State private var selectedStudent = 0
    var body: some View {
        VStack{
            Picker("Select Employee", selection: $selectedStudent) {
                ForEach(0..<student.count) {
                    Text("\(self.student[$0])")
                }
                
            }
            Spacer()
            Text("You choose Employee: \(student[selectedStudent])")
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//MARK:- Form with 10 Views , more than 10 Will throw error
//struct ContentView: View {
//    var body: some View {
//        Form{
//            Text("Hello Junaid")
//            Text("Hello Junaid")
//            Text("Hello Junaid")
//            Text("Hello Junaid")
//            Text("Hello Junaid")
//            Text("Hello Junaid")
//            Text("Hello Junaid")
//            Text("Hello Junaid")
//            Text("Hello Junaid")
//            Text("Hello Junaid")
//
//        }
//    }
//}


//MARK:- Form with Group, no change on UI just to avoid the problem of using 10 View in Form
//struct ContentView: View {
//    var body: some View {
//        Form{
//            Group{
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//            }
//            Group{
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//            }
//        }
//    }
//}

// MARK:- Form with Section, change on UI And Also avoid the problem of using 10 View in Form
//struct ContentView: View {
//    var body: some View {
//        Form{
//            Section{
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//            }
//            Section{
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//                Text("Hello Junaid")
//            }
//        }
//    }
//}

// MARK:- Form with Section And NavigationView with title

//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            Form{
//                Section{
//                    Text("Hello Junaid")
//                    Text("Hello Junaid")
//                    Text("Hello Junaid")
//                    Text("Hello Junaid")
//                    Text("Hello Junaid")
//                    Text("Hello Junaid")
//                }
//                Section{
//                    Text("Hello Junaid")
//                    Text("Hello Junaid")
//                    Text("Hello Junaid")
//                    Text("Hello Junaid")
//                }
//                }
//            .navigationBarTitle("SwiftUI", displayMode: .inline)
//
//        }
//
//    }
//}

// MARK:- Two Way Binding using @State Property Wrapper
//struct ContentView: View {
//    @State private var name = ""
//    var body: some View {
//        Form {
//
//        TextField("Please Enter Your name here", text: $name)
//        Text("Your Name: \(name)")
//            .font(.title)
//            .foregroundColor(Color.red)
//        }
//
//    }
//}
