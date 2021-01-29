//
//  ListCity.swift
//  App_conmuc
//
//  Created by Thanh Duy on 28/01/2021.
//

import SwiftUI

struct Response: Codable {
    var LtsItem: [Result]
}

struct Result: Codable {
    var ID: Int
    var Title: String
}
