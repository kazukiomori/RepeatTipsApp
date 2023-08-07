//
//  TimingView.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/07/28.
//

import SwiftUI

struct TimingView: View {
    @State var time = Date()
    @State var thema: String
    @Binding var path: [DestinationPath]
    
    var body: some View {
            VStack {
                ZStack {
                    HStack {
                        Spacer()
                        Button (action: {
                        }){
                        }
                    }
                    Text("いつやるか考える")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                .overlay(Rectangle().stroke(Color.black.opacity(0.05), lineWidth: 2))
                .background(Color.backgroundGray)
                Text("毎日決まった時間に\n行動することが継続のコツです")
                    .font(.system(size:25))
                    .bold()
                //                .padding(.bottom)
                Form{
                    DatePicker("毎日やる時間", selection: $time, displayedComponents: .hourAndMinute)
                        .datePickerStyle(.wheel)
                }
                Spacer()
                VStack {
                    Button (action: {
                        path.append(DestinationPath.confirm(thema: thema, time: time))
                    }){
                        Text("次へ")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 100, height: 20)
                    .padding()
                    .background(Color.blue)
                    
                }
                Spacer()
                    .frame(height: 20)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }

struct TimingView_Previews: PreviewProvider {
    @State  static var thema: String = ""
    @State  static var path: [DestinationPath] = []
    static var previews: some View {
        TimingView(thema: thema, path: $path)
    }
}
