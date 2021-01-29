//
//  TopBar.swift
//  App_conmuc
//
//  Created by Thanh Duy on 28/01/2021.
//

import SwiftUI

struct TopBar: View {
    var text: String
    var text1: String
    var text2: String
    var text3: String

    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                
                Button(action: {}, label: {
                    Image(systemName: text)
                })
                
                Spacer()
                
                Text(text1)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: text2)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: text3)
                })
                
                
            }
        }
        .padding()
        .padding(.top, UIApplication.shared.windows.last?.safeAreaInsets.top)
        .background(Color("Color"))
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar(text: "pencil.tip", text1: "su kien", text2: "", text3: "")
    }
}

