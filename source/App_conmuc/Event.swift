//
//  Event.swift
//  App_conmuc
//
//  Created by Thanh Duy on 26/01/2021.
//

import SwiftUI

struct Event: View {
    @State private var showingSlider = false
    @State private var showingPresented = false
    
    
    
    
    
    var body: some View {
        ZStack {
            
            Color.init("Color1")
            
            VStack {
                VStack(spacing: 20) {

                    HStack{
                        
                        Button(action: {
                            self.showingPresented.toggle()
                        }, label: {
                            Image(systemName: "list.dash")
                        })            .fullScreenCover(isPresented: $showingPresented, content: {
                            Menu()
                        })
                        

                        Spacer()

                        Text("Su kien")

                        Spacer()

                        Image(systemName: "magnifyingglass")


                        Button(action: {self.showingSlider.toggle()}, label: {
                            Image(systemName: "slider.horizontal.3")
                        })


                    }.font(.title)
                    .foregroundColor(.white)
                }
                .padding(.top, 50)
                .padding(.bottom, 20)
                .padding(.horizontal, 20)
                .background(Color("Color"))
                
                Spacer()
                
            }.edgesIgnoringSafeArea(.top)
            
            HalfModalView(isShown: $showingSlider, modalHeight: 600) {
                FilterEvent()
            }
        
            
        }.animation(.default)
    }
}

struct Event_Previews: PreviewProvider {
    static var previews: some View {
        Event()
    }
}
