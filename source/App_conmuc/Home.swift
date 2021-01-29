//
//  Home.swift
//  App_conmuc
//
//  Created by Thanh Duy on 26/01/2021.
//

import SwiftUI

struct Home: View {
    @State private var index = 0

    
    var body: some View {
        
        ZStack(alignment: .top) {
            Color.init("Color1")

            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                            
                            self.index = 0
                        }

                    }, label: {
                        VStack {
                            Text("Dang Nhap")
                                .foregroundColor(.black)
                                .font(.title)
                            Capsule()
                                .fill(self.index == 0 ? Color.red : Color.white)
                                .frame(width: 100, height: 2)
                                
                                
                        }
                            
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                            
                            self.index = 1
                        }

                    }, label: {
                        VStack {
                            Text("Dang Ky")
                                .foregroundColor(.black)
                                .font(.title)
                            Capsule()
                                .fill(self.index == 1 ? Color.red : Color.white)
                                .frame(width: 100, height: 2)
                                
                        }
                        
                    })
                    
                    Spacer()
                }
                if self.index == 0 {
                    Login()
                } else {
                    SignUp()
                }

            }


                            
        }
        .cornerRadius(20)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
