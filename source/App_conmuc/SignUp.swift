//
//  SignUp.swift
//  App_conmuc
//
//  Created by Thanh Duy on 26/01/2021.
//

import SwiftUI

struct SignUp: View {
    @State private var mail = ""
    @State private var numberPhone = ""
    @State private var password = ""
    @State private var Repassword = ""
    
    
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
            Text("Email")
            
            TextField("Nhap email cua ban", text: $mail)
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            
            
            Text("So dien thoai")
                
            TextField("Nhap so dien thoa cua ban", text: $numberPhone)
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)

                
            Text("Mat khau")
                
            
            SecureField("Nhap mat khau cua ban", text: $password)
                .padding()
                .border(Color.black)
                
            Text("Xac nhan mat khau")
                    
                
            SecureField("Nhap mat khau cua ban", text: $password)
                .padding()
                .border(Color.black)

                
            
            
        }.padding(.horizontal, 30)
            .padding(.vertical)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Dang Ky")
                    .font(.title)
                    .foregroundColor(.white)
            }).padding()
            .frame(width: (UIScreen.main.bounds.width - 60))
            .background(Color.init("Color"))
            
            HStack{
                Text("Ban da co tai khoan?")
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Dang nhap")
                        .foregroundColor(.red)
                })
            }

        }
    }

}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
