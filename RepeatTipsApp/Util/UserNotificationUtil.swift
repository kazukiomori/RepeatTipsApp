//
//  UserNotificationUtil.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/10/03.
//

import UIKit
import UserNotifications

final class UserNotificationUtil: NSObject {

    static var shared = UserNotificationUtil()
    private var center = UNUserNotificationCenter.current()

    func initialize() {
        center.delegate = UserNotificationUtil.shared
    }
}
