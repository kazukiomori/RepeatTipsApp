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
    
    /// Date型の配列をData型に変換
    func convertDatesToData(dates: [Date]) -> Data? {
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: dates, requiringSecureCoding: false)
            return data
        } catch {
            print("Date型の配列をData型に変換できませんでした。エラー: \(error)")
            return nil
        }
    }
    
    /// Data型をDate型の配列に変換
    func convertDataToDates(data: Data) -> [Date]? {
        do {
            if let dates = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? [Date] {
                return dates
            }
            return nil
        } catch {
            print("Data型をDate型の配列に変換できませんでした。エラー: \(error)")
            return nil
        }
    }
}
