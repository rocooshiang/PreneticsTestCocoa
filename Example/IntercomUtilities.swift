//
//  IntercomUtilities.swift
//  OneDNA
//
//  Created by Rocoo on 2017/6/5.
//  Copyright © 2017年 Prenetics. All rights reserved.
//

import Foundation
import Intercom
import UIKit

class IntercomUtilities{

  static let intercomWindowWillHide = Notification.Name.IntercomWindowWillHide
  
  static func setAPIKey(key: String, appId: String){
    Intercom.setApiKey(key, forAppId: appId)
  }
  
  static func registerUser(id: String){
    Intercom.registerUser(withUserId: id)
  }
  
  static func reset(){
    Intercom.reset()
  }
  
  static func unreadCount() -> Int{
    return Int(Intercom.unreadConversationCount())
  }
  
  static func setDeviceToken(token: Data){
    return Intercom.setDeviceToken(token)
  }
  
  static func presentMessenger(){
    Intercom.presentMessenger()
  }
    
  static func setInAppMessagesVisible(_ isVisble: Bool){
    Intercom.setInAppMessagesVisible(isVisble)
  }
  
}
