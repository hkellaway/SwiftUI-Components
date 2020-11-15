//
//  BackgroundColor.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import SwiftUI

extension View {
  
  func backgroundColor(_ color: Color) -> some View {
    self.background(color)
    }
  
}

struct BackgroundColor_Previews: PreviewProvider {
  
  static var previews: some View {
    Text("Hello, World!")
      .backgroundColor(.yellow)
  }
  
}
