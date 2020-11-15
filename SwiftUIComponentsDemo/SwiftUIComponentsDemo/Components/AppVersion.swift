//
//  AppVersion.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import SwiftUI

struct AppVersion: View {
  
  var hasV: Bool = false

  var body: some View {
    Unwrap(MainBundle.appVersion) { appVersion in
      Text(hasV ? "v\(appVersion)" : appVersion)
    }
  }
  
}
