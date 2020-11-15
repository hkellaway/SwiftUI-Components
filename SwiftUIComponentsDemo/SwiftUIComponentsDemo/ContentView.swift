//
//  ContentView.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import SwiftUI

struct ContentView: View {
    
  var maybeGreeting: String? = "Hello"
    
  var body: some View {
    VStack {
      Unwrap(maybeGreeting) { greeting in
        Text("\(greeting), world!")
      }
      Text("Second line")
      RenderConditionally(if: maybeGreeting == "Hello") {
        Text("Hello again!")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
