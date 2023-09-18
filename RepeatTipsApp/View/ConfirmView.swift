//
//  ConfirmView.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/07/28.
//

import SwiftUI

struct ConfirmView: View {
    @State var thema: String
    @State var time: Date
    @State var path = NavigationPath()
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Spacer()
                    Button (action: {
                    }){
                    }
                }
                Text("確認")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
            }
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding()
            .overlay(Rectangle().stroke(Color.black.opacity(0.05), lineWidth: 2))
            .background(Color.backgroundGray)
            Text("継続すること")
                .font(.system(size:30))
                .bold()
                .padding(.top)
            
                Text("\(thema)")
                    .font(.system(size:30))
                    .bold()
                    .padding()
                    .frame(width: 800, height: 100)
                    .background(Color.backgroundGray)
                    .padding()
            Spacer()
                .frame(height: 50)
            
            Text("実行するタイミング")
                .font(.system(size:30))
                .bold()
            
                Text("\(time)")
                    .font(.system(size:30))
                    .bold()
                    .padding()
                    .frame(width: 800, height: 100)
                    .background(Color.backgroundGray)
                    .padding()

            Spacer()
            VStack {
                Button (action: {
                    if thema == "" {
                        return
                    } else {
                       
                    }
                }){
                    Text("始める！")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }
                .padding()
                .background(Color.blue)
                .frame(width: 300, height: 50)
            }
            Spacer()
                .frame(height: 20)
        }
        .edgesIgnoringSafeArea(.top)
        }
    
}

//struct ConfirmView_Previews: PreviewProvider {
//    static var previews: some View {
//        ConfirmView()
//    }
//}
