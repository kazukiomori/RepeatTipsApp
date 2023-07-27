//
//  CreateThemaView.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/07/27.
//

import SwiftUI

struct CreateThemaView: View {
    @State private var activie = false
    @State private var thema = ""
    var body: some View {

        VStack {
            ZStack {
                HStack {
                    Spacer()
                    Button (action: {
                    }){
                    }
                }
                Text("続けたいテーマを決める")
                    .fontWeight(.bold)
            }
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding()
            .overlay(Rectangle().stroke(Color.black.opacity(0.05), lineWidth: 2))
            .background(.gray)
            Text("ここで決めたことを\n毎日続けます")
                .font(.system(size:30))
                .bold()
//                .padding(.bottom)
            TextField("継続したいこと", text: $thema)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.top)
                            .font(.system(size: 25))
            Spacer()
            VStack {
                Button (action: {
                    if thema == "" {
                        return
                    } else {
                        activie = true
                    }
                }){
                    Text("次へ")
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

struct CreateThemaView_Previews: PreviewProvider {
    static var previews: some View {
        CreateThemaView()
    }
}