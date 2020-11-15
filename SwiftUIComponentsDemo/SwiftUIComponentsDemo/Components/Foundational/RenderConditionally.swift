//
//  RenderConditionally.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import SwiftUI

struct RenderConditionally<Content: View>: View {
  
  private let shouldShow: Bool
  private let contentProvider: () -> Content

  init(if shouldShow: Bool,
       @ViewBuilder content: @escaping () -> Content) {
    self.shouldShow = shouldShow
    self.contentProvider = content
  }

  var body: some View {
    return shouldShow ? AnyView(contentProvider())
      : AnyView(EmptyView())
  }
  
}

struct RenderConditionally_Previews: PreviewProvider {
  
  static var shouldShow: Bool = true
  
  static var previews: some View {
    RenderConditionally(if: shouldShow) {
      /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
  }
  
}
