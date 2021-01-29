//
//  FilterEvent.swift
//  App_conmuc
//
//  Created by Thanh Duy on 28/01/2021.
//

import SwiftUI

struct FilterEvent: View {
    @State private var formDate = Date()
    @State private var toDate = Date()
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Bo loc")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("Loai")
                .font(.headline)
                .fontWeight(.light)
                .padding()
            
            DropDown()
            
            Text("Chon thanh pho")
                .font(.headline)
                .fontWeight(.light)
                .padding()
                
            
            DropDown1()
            

            
            
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Tu ngay")
                    
                    DatePicker("", selection: $formDate, displayedComponents: [.date])
                        .datePickerStyle(CompactDatePickerStyle())
                        .labelsHidden()
                    
                }
                Spacer()
                
                
                VStack(alignment: .trailing) {
                    Text("Den ngay")
                    
                    DatePicker("", selection: $toDate, displayedComponents: [.date])
                        .datePickerStyle(CompactDatePickerStyle())
                        .labelsHidden()
                }
            }.padding()
            
            Spacer()
            
        }.padding(.horizontal, 20)
    }
}

struct FilterEvent_Previews: PreviewProvider {
    static var previews: some View {
        FilterEvent()
    }
}

struct DropDown: View {
    
    @State private var type = "Mien phi"
    
    @State private var expand = false
    
    let types = ["Mien phi", "Tra phi"]
    
    var body: some View {
        VStack(alignment: .leading) {
    
            DisclosureGroup("\(type)", isExpanded: $expand) {
                ScrollView{
                    VStack {
                        ForEach(types, id: \.self) { t in
                            HStack {
                            
                                Text(t)
                                    .onTapGesture {
                                        self.type = t
                                        withAnimation{
                                            self.expand.toggle()
                                        }
                                    }
                                    
                            }
                        }
                    }
                }
                
                
            }
            .padding()
            .cornerRadius(30)
            .border(Color.black)
            
        }

    }
}

struct DropDown1: View {
    @State private var isExpand1 = false
    @State private var selectionNumber1 = ""
    
    @State private var LtsItem = [Result]()
    
    
    var body: some View {
        VStack(alignment: .leading) {
    
            DisclosureGroup("\(selectionNumber1)", isExpanded: $isExpand1) {
                List(LtsItem, id: \.ID) { item in
                    HStack {
                    
                        Text(item.Title)
                            .onTapGesture {
                                self.selectionNumber1 = item.Title
                                withAnimation{
                                    self.isExpand1.toggle()
                                }
                            }
                            .padding()
                            .frame(width: (UIScreen.main.bounds.width - 80))
                        
                        Spacer()
                    }
                }
                .frame(height: 300)
                .onAppear(perform: loadData)

                
                
            }
            .padding()
            .cornerRadius(30)
            .border(Color.black)
            
        }
    }
    
    func loadData() {
        guard let url = URL(string: "https://thongtindoanhnghiep.co/api/city") else {
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        self.LtsItem = decodedResponse.LtsItem
                    }

                    // everything is good, so we can exit
                    return
                }
            }

            // if we're still here it means there was a problem
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}

