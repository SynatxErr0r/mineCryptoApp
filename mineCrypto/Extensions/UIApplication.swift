//
//  UIApplication.swift
//  mineCrypto
//
//  Created by 博滔张 on 2025/5/21.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
