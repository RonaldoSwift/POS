//
//  Comida.swift
//  POS
//
//  Created by Ronaldo Andre Vargas Huaman on 8/12/21.

//

import Foundation
struct Comida: Identifiable {
    let id = UUID()
    let imagen : String
    let nombre : String
    let precio : Double
    let cantidad : Double
    let ordenes : String
}
