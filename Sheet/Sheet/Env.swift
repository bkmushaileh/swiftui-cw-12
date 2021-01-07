//
//  Env.swift
//  Sheet
//
//  Created by Khaled Al-Mushaileh on 1/7/21.
//

import SwiftUI

class Env: ObservableObject {
    @Published var name : String = ""
    @Published var age : String = ""
    @Published var phone : String = ""
    @Published var isMentor = false
}
