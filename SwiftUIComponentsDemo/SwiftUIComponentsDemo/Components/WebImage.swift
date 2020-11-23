//
//  WebImage.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/23/20.
//

import Foundation
import SwiftUI
import URLImage

struct WebImage<Content: View>: View {

  private let url: URL?
  private let placeholder: UIImage
  private let contentProvider: (Image) -> Content

  init(url: URL?,
       placeholder: UIImage,
       @ViewBuilder content: @escaping (Image) -> Content) {
    self.url = url
    self.placeholder = placeholder
    self.contentProvider = content
  }

  var body: some View {
    UnwrapOtherwise(value: url, otherwise: {
      AnyView(contentProvider(Image(uiImage: placeholder)))
    }) { imageUrl in
      AnyView(
        URLImage(url: imageUrl) { image in
          contentProvider(image)
        }
      )
    }
  }

}
