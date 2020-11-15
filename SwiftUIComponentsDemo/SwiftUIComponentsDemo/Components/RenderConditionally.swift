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
