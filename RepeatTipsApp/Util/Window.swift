//
//  Window.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/08/03.
//

import Foundation
import SwiftUI

class Window {
    static func getSafeAreaTop()->CGFloat?{
        let keyWindow = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        return (keyWindow?.safeAreaInsets.top)
    }
}
