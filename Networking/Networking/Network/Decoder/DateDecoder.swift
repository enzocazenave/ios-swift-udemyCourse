//
//  DateDecoder.swift
//  Networking
//
//  Created by Brais Moure on 10/10/2020.
//

import Foundation

final class DateDecoder: JSONDecoder {
    
    let dateFormatter = DateFormatter()
    
    override init() {
        super.init()
        // "2020-10-10T03:50:06.151+05:30"
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXX"
        dateDecodingStrategy = .formatted(dateFormatter)
    }
    
}
