//
//  AppName.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import SwiftUI

struct AppName: View {
  
  var body: some View {
    IfNot(this: MainBundle.appDisplayName,
          thenThat: MainBundle.appBundleName) { appName in
      Text(appName)
    }
  }
  
}
