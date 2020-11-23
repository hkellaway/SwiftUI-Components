//
//  StaticSearchBar.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/23/20.
//

import Foundation
import SwiftUI

struct StaticSearchBar: View {

  var placeholder: String?

  var body: some View {
    ZStack(alignment: .leading) {
      RoundedRectangle(cornerRadius: 10)
        .fill(Color.systemGray6)
      HStack(spacing: 6) {
        Image(systemName: "magnifyingglass")
          .foregroundColor(.systemGray)
        Unwrap(placeholder) { placeholder in
          Text(placeholder)
            .foregroundColor(.systemGray)
        }
      }
      .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 0))
    }
    .frame(height: 36)
  }

}

struct StaticSearchBar_Previews: PreviewProvider {

  static var maybeGreeting: String? = nil

  static var previews: some View {
    StaticSearchBar(placeholder: "Search term here")
      .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
  }

}
