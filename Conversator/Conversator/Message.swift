//
//  Message.swift
//  Conversator
//
//  Created by Christophe VG on 24/01/2021.
//

import UIKit

class Message {
  var text : String
    
  //MARK: Initialization
     
  init?(_ text: String) {
    guard !text.isEmpty else {
      return nil
    }
    self.text = text
  }
}
