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
    
    public func convert(inputDateString: String, inputFormat: DUDateFormat, toFormat: DUDateFormat) -> String {
        let inputFormatter = DUFormatterFactory.getFormatter(for: inputFormat)
        let toFormatter = DUFormatterFactory.getFormatter(for: toFormat)
        print(inputFormatter == toFormatter)
        return "Implementation yet to be done."
    }
}

private class DUFormatterFactory {
    
    public static func getFormatter(for format: DUDateFormat) -> DateFormatter {
        
        switch format {
            
        case .standard:
            return DUFormatterFactory.standardFormatter
        case .short:
            return DUFormatterFactory.defaultFormatter
        case .medium:
            return DUFormatterFactory.defaultFormatter
        case .long:
            return DUFormatterFactory.defaultFormatter
        case .full:
            return DUFormatterFactory.defaultFormatter
        }
    }
    
    private static let standardFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = DUDateFormat.standard.rawValue
        return formatter
    }()
    
    private static let defaultFormatter: DateFormatter = {
         return DateFormatter()
    }()
}
