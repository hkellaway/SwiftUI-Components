//
//  IfNotThisThenThat.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import SwiftUI

struct IfNot<Value, Content: View>: View {
  
  private let this: Value?
  private let that: Value?
  private let contentProvider: (Value) -> Content
  
  init(this: Value?, thenThat that: Value?,
       @ViewBuilder content: @escaping (Value) -> Content) {
    self.this = this
    self.that = that
    self.contentProvider = content
  }
  
  var body: some View {
    if let this = this {
      contentProvider(this)
    } else {
      Unwrap(that) { that in
        contentProvider(that)
      }
    }
  }
  
}
