//
//  SplashScreen.swift
//  Conbachtuot
//
//  Created by Thanh Duy on 26/01/2021.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    var body: some View {
        VStack {
            if self.isActive {
                // 3.
               ContentView()
            } else {
                // 4.
                Image("0- Splash Screen")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            }
        }
        // 5.
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                // 7.
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
