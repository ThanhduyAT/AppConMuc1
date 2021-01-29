//
//  ContentView.swift
//  App_conmuc
//
//  Created by Thanh Duy on 26/01/2021.
//

import SwiftUI


struct ContentView: View {

    
    @State private var login = false
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                ZStack(alignment: .top) {
                    LinearGradient(gradient: .init(colors: [Color("Color")]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        Image("ic_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width * 0.4)
                        Home()
                    
                    }

                    
                    
                }
            }
            .navigationBarHidden(true)
        }
           
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
