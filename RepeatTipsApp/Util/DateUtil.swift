//
//  DateUtil.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/08/06.
//

import UIKit

class DateUtils {
    static let calendar = Calendar(identifier: .gregorian)
    
    static func dateFromString(string: String) -> Date {
        let formatter: DateFormatter = DateFormatter()
        let format = "yyyy/MM/dd HH:mm"
        formatter.calendar = calendar
        formatter.dateFormat = format
        return formatter.date(from: string)!
    }

    static func stringFromDate(date: Date) -> String {
        let formatter: DateFormatter = DateFormatter()
        let format = "HH時mm分"
        formatter.calendar = calendar
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    
    static func timeFromString(time: String) -> Date {
        let formatter: DateFormatter = DateFormatter()
        let format = "HH:mm"
        formatter.calendar = calendar
        formatter.dateFormat = format
        return formatter.date(from: time)!
    }
    
    /// Date型の配列をData型に変換
    static func convertDatesToData(dates: [Date]) -> Data? {
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: dates, requiringSecureCoding: false)
            return data
        } catch {
            print("Date型の配列をData型に変換できませんでした。エラー: \(error)")
            return nil
        }
    }
    
    /// Data型をDate型の配列に変換
    static func convertDataToDates(data: Data) -> [Date]? {
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
    
    static func consecutiveDaysCount(in dates: [Date]) -> Int {
        guard dates.count > 1 else {
            return 0
        }
        var consecutiveCount = 1
        var previousDate = dates[0]
        
        for i in 1..<dates.count {
            let currentDate = dates[i]
            
            // 日付の差を計算し、1日ずつ連続しているか確認
            let calendar = Calendar.current
            if let daysBetween = calendar.dateComponents([.day], from: previousDate, to: currentDate).day {
                if daysBetween == 1 {
                    consecutiveCount += 1
                } else {
                    // 日付が連続していない場合、カウントをリセット
                    consecutiveCount = 1
                }
            }
            previousDate = currentDate
        }
        return consecutiveCount
    }
}
