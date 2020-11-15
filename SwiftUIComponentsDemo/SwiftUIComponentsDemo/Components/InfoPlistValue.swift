//
//  InfoPlistValue.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import SwiftUI

struct InfoPlistValue<Content: View>: View {
  
  private let bundle: Bundle
  private let key: String
  private let contentProvider: (String) -> Content

  init(inBundle bundle: Bundle = .main, key: String,
       @ViewBuilder content: @escaping (String) -> Content) {
    self.key = key
    self.bundle = bundle
    self.contentProvider = content
  }

  var body: some View {
    Unwrap(bundle.infoDictionary?[key] as? String) { value in
      contentProvider(value)
    }
  }
  
}
