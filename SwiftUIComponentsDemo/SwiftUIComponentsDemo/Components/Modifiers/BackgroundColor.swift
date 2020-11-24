//
//  BackgroundColor.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import SwiftUI

extension View {
  
  func backgroundColor(_ uiColor: UIColor) -> some View {
    self.background(Color(uiColor))
  }
  
}

struct BackgroundColor_Previews: PreviewProvider {
  
  static var previews: some View {
    Text("Hello, World!")
      .backgroundColor(.systemTeal)
  }
  
}
