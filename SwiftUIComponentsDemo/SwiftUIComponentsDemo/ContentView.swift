//
//  ContentView.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import UIKit
import SwiftUI

struct ContentView: View {
    
  var maybeGreeting: String? = "Hello"
  var imageURL: URL? = URL(string: "https://upload.wikimedia.org/wikipedia/en/7/7d/Lenna_%28test_image%29.png")
  var imagePlaceholder: UIImage = UIImage(systemName: "magnifyingglass")!
    
  var body: some View {
    VStack {
      StaticSearchBar(placeholder: "Search here")
      Unwrap(maybeGreeting) { greeting in
        Text("\(greeting), world!")
      }
      Text("Second line")
      RenderConditionally(if: maybeGreeting == "Hello") {
        Text("Hello again!")
      }
      AppName()
        .backgroundColor(.yellow)
      AppVersion(hasV: true)
      Color.blue
          .frame(width: 300, height: 50)
          .watermarked(with: "Example watermark")
      WebImage(url: imageURL,
               placeholder: imagePlaceholder) { image in
        image
          .resizable()
          .frame(width: 100, height: 100)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
