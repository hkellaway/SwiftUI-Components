//
//  Watermark.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import SwiftUI

// Source: https://www.hackingwithswift.com/books/ios-swiftui/custom-modifiers

struct Watermark: ViewModifier {
  
  let text: String

  func body(content: Content) -> some View {
    ZStack(alignment: .bottomTrailing) {
        content
        Text(text)
            .font(.caption)
            .foregroundColor(.white)
            .padding(5)
            .backgroundColor(.black)
    }
}
  
}

extension View {
  
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
  
}
