//
//  PieChartView.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/07/26.
//

import SwiftUI

enum period {
    case week
    case twoWeeks
    case month
    case threeMonth
    case sixMonth
    case oneYear
    case twoYear
    case threeYear
    case tenYear
    
    func getDenominator() -> Int {
        switch self {
        case .week:
            return 7
        case .twoWeeks:
            return 14
        case .month:
            return 30
        case .threeMonth:
            return 90
        case .sixMonth:
            return 182
        case .oneYear:
            return 365
        case .twoYear:
            return 730
        case .threeYear:
            return 1095
        case .tenYear:
            return 3650
        }
    }
    
    func getPeriod(days: Int) -> period {
        if days <= 7 {
            return .week
        } else if days <= 14 {
            return .twoWeeks
        } else if days <= 30 {
            return .month
        } else if days <= 90 {
            return .threeMonth
        } else if days <= 182 {
            return .sixMonth
        } else if days <= 365 {
            return .oneYear
        } else if days <= 730 {
            return .twoYear
        } else if days <= 1095 {
            return .threeYear
        }
        return .tenYear
    }
}

struct PieChartView: View {
    @Binding var progress: CGFloat
    
    var body: some View {
        ZStack {
            // 背景の円
            Circle()
            // ボーダーラインを描画するように指定
                .stroke(lineWidth: 24.0)
                .opacity(0.3)
                .foregroundColor(.blue)
            
            // 進捗を示す円
            Circle()
            // 始点/終点を指定して円を描画する
            // 始点/終点には0.0-1.0の範囲に正規化した値を指定する
                .trim(from: 0.0, to: min(progress, 1.0))
            // 線の端の形状などを指定
                .stroke(style: StrokeStyle(lineWidth: 24, lineCap: .round, lineJoin: .round))
                .foregroundColor(.blue)
            // デフォルトの原点は時計の12時の位置ではないので回転させる
                .rotationEffect(Angle(degrees: 270.0))
            
            // 進捗率のテキスト
            Text(String(format: "%.0f%%", min(progress, 1.0) * 100.0))
                .font(.largeTitle)
                .bold()
        }
    }
}
