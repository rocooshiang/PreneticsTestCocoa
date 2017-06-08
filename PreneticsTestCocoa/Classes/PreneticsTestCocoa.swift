//
//  GlobalMethod.swift
//  Pods
//
//  Created by Rocoo on 2017/6/8.
//
//

import Foundation
import UIKit

public struct Device{
  public static let screenWidth  = UIScreen.main.bounds.size.width
  public static let screenHeight = UIScreen.main.bounds.size.height
  public static let maxLength = max(Device.screenWidth, Device.screenHeight)
  public static let minLenght = min(Device.screenWidth, Device.screenHeight)
}

public struct DeviceType{
 public static let phone4OrLess  = UIDevice.current.userInterfaceIdiom == .phone && Device.maxLength < 568.0
 public static let phone5 = UIDevice.current.userInterfaceIdiom == .phone && Device.maxLength == 568.0
 public static let phone6  = UIDevice.current.userInterfaceIdiom == .phone && Device.maxLength == 667.0
 public static let phone6S = UIDevice.current.userInterfaceIdiom == .phone && Device.maxLength == 736.0
 public static let pad = UIDevice.current.userInterfaceIdiom == .pad && Device.maxLength == 1024.0
}

public extension CGFloat{
 public func rescaleFontSize() -> CGFloat{
    if UIDevice.current.userInterfaceIdiom == .phone{
      switch Device.maxLength {
      case 568.0:
        return self - 3
      case 667.0:
        return self
      case 736.0:
        return self + 2
      default:
        return self
      }
    }
    return self
  }
  
 public func rescaleByDeviceHeight() -> CGFloat{
    return self * Device.screenHeight / 667.0
  }
  
 public func rescaleByDeviceWidth() -> CGFloat{
    return self * Device.screenWidth / 375.0
  }
}
