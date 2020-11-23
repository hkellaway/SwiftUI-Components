//
//  UnwrapOtherwise.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/23/20.
//

import Foundation

import SwiftUI

struct UnwrapOtherwise<Value, Content: View>: View {

  private let value: Value?
  private let contentProvider: (Value) -> Content
  private let otherwiseProvider: () -> Content

  init(value: Value?,
       @ViewBuilder otherwise: @escaping () -> Content,
       @ViewBuilder content: @escaping (Value) -> Content) {
    self.value = value
    self.contentProvider = content
    self.otherwiseProvider = otherwise
  }

  var body: some View {
    if value != nil {
      Unwrap(value) { value in
        AnyView(contentProvider(value))
      }
    } else {
      AnyView(otherwiseProvider())
    }
  }

}

struct UnwrapOtherwise_Previews: PreviewProvider {

  static var maybeGreeting: String? = nil

  static var previews: some View {
    UnwrapOtherwise(value: maybeGreeting, otherwise: {
      Text("No greeting :(")
    }) { greeting in
      Text("\(greeting), World!")
    }
  }

}
