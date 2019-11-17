//
//  ContentView.swift
//  BullsEye
//
//  Created by zaid on 11/17/19.
//  Copyright © 2019 zaid. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible = false
    @State var whosThereIsVisible: Bool = false

    
    var body: some View {
        VStack {
            Text("Welcome to UAG")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            Button(action: {
                print ("I was pressed")
                self.alertIsVisible = true
            }) {
                Text("Hit me!")
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
              return Alert(title: Text("Hello there!"),
                           message: Text("This is my first pop-up."),
                           dismissButton: .default(Text("Awesome!")))
            }
            
            //Knock knock joke
            Button(action: {
              self.whosThereIsVisible = true
            }) {
              Text(/*@START_MENU_TOKEN@*/"Knock, Knock!"/*@END_MENU_TOKEN@*/)
            }
            .alert(isPresented: $whosThereIsVisible) { () -> Alert in
              return Alert(title: Text("Who's There?"), message: Text("Little old lady."), dismissButton: .default(Text("Little old lady who?")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
