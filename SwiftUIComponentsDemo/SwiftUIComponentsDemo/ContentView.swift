//
//  ContentView.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import SwiftUI

struct ContentView: View {
    
  var maybeGreeting: String? = nil
    
  var body: some View {
    VStack {
      Unwrap(maybeGreeting) { greeting in
        Text("\(greeting), world!")
          .padding()
      }
      Text("Second line")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
