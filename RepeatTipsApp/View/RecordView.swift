//
//  RecordView.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/07/25.
//

import SwiftUI

struct RecordView: View {
    @Environment (\.managedObjectContext) var managedObjContext
    @Environment (\.dismiss) var dismiss
    @State var progressValue: CGFloat = 0
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Spacer()
                    Button (action: {
                        
                    }){
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 20, height: 15)
                            .foregroundColor(.black)
                    }
                }
                Text("記録する")
                    .fontWeight(.bold)
            }
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding()
            .overlay(Rectangle().stroke(Color.black.opacity(0.05), lineWidth: 2))
            
            PieChartView(progress: $progressValue)
                            .frame(width: 250.0, height: 250.0)
                            .padding(50)
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
