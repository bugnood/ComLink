//
//  ContentView.swift
//  ComLink
//
//  Created by 阿部大輔 on 2023/09/09.
//


import SwiftUI

struct LoginView: View {
    @State var inputEmail: String = ""
    @State var inputPassword: String = ""
    // アラート判定用
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("SwiftUI App")
                    .font(.system(size: 24,
                                  weight: .heavy))
                
                VStack(spacing: 24) {
                    TextField("Mail address", text: $inputEmail)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)
                    
                    SecureField("Password", text: $inputPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)
                    
                }
                .frame(height: 200)
                
                Button(action: {
                    print("Login処理")
                    // 自身を判定
                    self.showingAlert = true
                },
                       label: {
                    Text("Login")
                        .fontWeight(.medium)
                        .frame(minWidth: 160)
                        .foregroundColor(.white)
                        .padding(12)
                        .background(Color.accentColor)
                        .cornerRadius(8)
                })
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("テストアラートです。"))
                }
                
                Spacer()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        //        ContentTestView()
    }
}
