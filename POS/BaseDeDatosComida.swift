//
//  BaseDeDatosComida.swift
//  POS
//
//  Created by Ronaldo Andre Vargas Huaman on 8/12/21.
//

import Foundation

class BaseDeDatosComida{
    
    var comidas: [Comida] = []
    
    //CRUD
    
    func agregarComida(comida: Comida){
        comidas.append(comida)
    }
    
}
