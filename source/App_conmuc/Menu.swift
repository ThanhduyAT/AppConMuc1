//
//  Menu.swift
//  App_conmuc
//
//  Created by Thanh Duy on 27/01/2021.
//

import SwiftUI

struct Menu: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var showingAccount = false
    @State private var showingEvent = false
    @State private var showingCheckin = false
    @State private var showingAlert = false
    @State private var showingChangePassword = false
    @State private var showingNews = false

    
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .top) {
           
                Color.init("Color1")
                
                VStack {
                    HStack(alignment: .top){

                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image("icon_arrow_left_red")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.1)
                        })
                        
                        
                        
                        Spacer()
                        
                        Image("ic_logo_red")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width * 0.35)
                            .padding(.bottom, 40)
                            .padding(.trailing, 40)
                        
                        Spacer()
                        
                    }
                    HStack{
                        
                        Button(action: {
                            self.showingAccount.toggle()
                        }, label: {
                            Image("img_menu_taikhoan")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.35)
                        })
                        .fullScreenCover(isPresented: $showingAccount, content: {
                            Profile()
                        })

                        
                        
                        
                        
                        Spacer()
                        
                        Button(action: {
                            self.showingEvent.toggle()
                        }, label: {
                            Image("img_menu_sukien")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.35)
                        })
                        .fullScreenCover(isPresented: $showingEvent, content: {
                            Event()
                        })
//

                    }.padding(.horizontal, 40)
                    .padding(.vertical, 5)
                    
                    HStack{
                           
                        Button(action: {
                            self.showingCheckin.toggle()
                        }, label: {
                            Image("img_menu_checkin")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.35)
                        })
                        .fullScreenCover(isPresented: $showingCheckin, content: {
                            CheckIn()
                        })

                        
                        Spacer()
                        
                        Button(action: {
                            self.showingAlert.toggle()
                        }, label: {
                            Image("img_menu_thongbao")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.35)
                        })
                        

                    }.padding(.horizontal, 40)
                    .padding(.vertical, 5)
                    
                    HStack{
                            
                        
                        Button(action: {
                            self.showingChangePassword.toggle()
                        }, label: {
                            Image("img_menu_matkhau")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.35)
                        })
                        
                        
                        Spacer()
                        
                        Button(action: {
                            self.showingNews.toggle()
                        }, label: {
                            Image("img_menu_news")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.35)
                        })
                        

                    }.padding(.horizontal, 40)
                    .padding(.vertical, 5)
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width * 0.1)
                    })
                    .padding(.top, 30)
                    
                    
                    
                    
                    
                    
            
                
                }
                
            }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
