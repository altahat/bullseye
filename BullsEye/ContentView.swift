//
//  ContentView.swift
//  BullsEye
//
//  Created by zaid on 11/17/19.
//  Copyright © 2019 zaid. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to iOS Class")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            /*
             Button(action: {
                 // What to perform
             }) {
                 // How the button looks like
             }
             **/
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Hit me!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
