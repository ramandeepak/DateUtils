//
//  DateUtils.swift
//  DateUtils
//
//  Created by Deepak Raman on 12/15/19.
//  Copyright © 2019 Deepak Raman. All rights reserved.
//

import Foundation

public class DateUtils {
    
    public static let shared = DateUtils()
    
    private init () {
        
    }
    
    private var dateFormatter: DateFormatter {
        return DateFormatter()
    }
}
