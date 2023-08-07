//
//  DateUtil.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/08/06.
//

import UIKit

class DateUtils {
    class func dateFromString(string: String) -> Date {
        let formatter: DateFormatter = DateFormatter()
        let format = "yyyy/MM/dd HH:mm"
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = format
        return formatter.date(from: string)!
    }

    class func stringFromDate(date: Date) -> String {
        let formatter: DateFormatter = DateFormatter()
        let format = "HH時mm分"
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
}
