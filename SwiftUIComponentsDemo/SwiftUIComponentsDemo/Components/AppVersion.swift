//
//  AppVersion.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import SwiftUI

struct AppVersion: View {

  var body: some View {
    Unwrap(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String) { appVersion in
      Text(appVersion)
    }
  }
  
}
