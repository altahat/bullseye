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
  @State var sliderValue = 50.0
  @State var target = Int.random(in: 1...100)
 
  var body: some View {
    VStack {
      Spacer()
      
      // Target row
      HStack {
        Text("Put the bullseye as close as you can to:")
        Text("\(target)")
      }
      Spacer()
      
      // Slider row
      HStack {
        Text("1")
        Slider(value: $sliderValue, in: 1...100)
        Text("100")
      }
      Spacer()
      
      // Button row
      Button(action: {
        print("Button pressed!")
        self.alertIsVisible = true
      }) {
        Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
      }
      .alert(isPresented: $alertIsVisible) { () -> Alert in
        let roundedValue = Int(sliderValue.rounded())
        return Alert(title: Text("Hello there!"), message: Text(
          "The slider's value is \(roundedValue).\n" +
          "You scored \(pointsForCurrentRound()) points this round."
        ), dismissButton: .default(Text("Awesome!")))
      }
      Spacer()
      
      // Score row
      HStack {
        Button(action: {}) {
          Text("Start Over")
        }
        Spacer()
        Text("Score:")
        Text("999999")
        Spacer()
        Text("Round:")
        Text("999")
        Spacer()
        Button(action: {}) {
          Text("Info")
        }
      }
      .padding(.bottom, 20)
    }
  }
  
  func pointsForCurrentRound() -> Int {
    
    let roundedValue = Int(sliderValue.rounded())
    let difference = abs(target - roundedValue)
    let awardedPoints = 100 - difference
    return awardedPoints
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().previewLayout(.fixed(width: 896, height: 414))
  }
}

