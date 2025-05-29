//
//  String.swift
//  mineCrypto
//
//  Created by 博滔张 on 2025/5/28.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}

