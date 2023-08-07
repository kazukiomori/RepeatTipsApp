//
//  CreateThemaView.swift
//  RepeatTipsApp
//
//  Created by Kazuki Omori on 2023/07/27.
//

import SwiftUI

enum DestinationPath: Hashable{
    case timing(thema: String)
    case confirm(thema: String, time: Date)
}

struct CreateThemaView: View {
    @State var activie = false
    @State var thema = ""
    @State private var path: [DestinationPath] = []
    var body: some View {
        NavigationStack(path: $path) {
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
                        .font(.system(size: 20))
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                .overlay(Rectangle().stroke(Color.black.opacity(0.05), lineWidth: 2))
                .background(Color.backgroundGray)
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
                        path.append(DestinationPath.timing(thema: thema))
                    }){
                        Text("次へ")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    .padding()
                    .background(Color.blue)
                    .frame(width: 300, height: 50)
                    .disabled(thema.count == 0)
                }
                Spacer()
                    .frame(height: 20)
            }
            .edgesIgnoringSafeArea(.top)
            .navigationDestination(for: DestinationPath.self) { DestinationPath in
                switch DestinationPath {
                case let DestinationPath.timing(thema):
                    TimingView(thema: thema, path: $path)
                case let DestinationPath.confirm(thema, time):
                    ConfirmView(thema: thema, time: DateUtils.stringFromDate(date: time))
                }
            }
        }
    }
}

struct CreateThemaView_Previews: PreviewProvider {
    static var previews: some View {
        CreateThemaView()
    }
}
