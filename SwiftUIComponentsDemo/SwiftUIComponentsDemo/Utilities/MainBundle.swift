//
//  MainBundle.swift
//  SwiftUIComponentsDemo
//
//  Created by Harlan Kellaway on 11/14/20.
//

import Foundation

struct MainBundle {
  
  static var appBundleName: String? {
    return Bundle.main.infoDictionary?["CFBundleName"] as? String
  }
  
  static var appDisplayName: String? {
    return Bundle.main.infoDictionary?["CFBundleDisplayName"] as? String
  }
  
  static var appVersion: String? {
    return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
  }
  
}
