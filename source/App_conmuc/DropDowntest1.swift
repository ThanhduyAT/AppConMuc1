//
//  DropDowntest1.swift
//  App_conmuc
//
//  Created by Thanh Duy on 28/01/2021.
//

import SwiftUI

struct DropDown2: View {
    @State private var isExpand1 = false
    @State private var selectionNumber1 = ""
    
    @State private var LtsItem = [Result]()
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            Text("List")
            
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
                    }
                }
                .frame(height: 300)
                .onAppear(perform: loadData)

                
                
            }.accentColor(.red)
            .padding(20)
            .cornerRadius(30)
            
            Text("123")
            
            Spacer()
        }.padding()
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

struct DropDowntest1_Previews: PreviewProvider {
    static var previews: some View {
        DropDown2()
    }
}
