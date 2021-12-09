//
//  ListaComidaView.swift
//  POS
//
//  Created by Ronaldo Andre Vargas Huaman on 8/12/21.
//

import SwiftUI

struct ListaComidaView: View {
    
    var baseDeDatosDeComida : BaseDeDatosComida = BaseDeDatosComida()
    
    var comidas: [Comida] = [Comida.init(imagen: "Comida1",
                                         nombre: "Spicy seasoned sea...",
                                         precio: 2.29,
                                         ordenes: "")]
    
    var body: some View {
        
        ForEach(comidas, id: \.id){ comida in
            ZStack{
                Image("Fondo")
                    .resizable()
                    .frame(width: 440, height: 790, alignment: .center)
                HStack{
                    VStack{
                        HStack{
                            Image(comida.imagen)
                                .resizable()
                                .frame(width: 60, height: 60, alignment: .leading)
                                .cornerRadius(30)
                            VStack(alignment: .leading){
                                Text(comida.nombre)
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                                Text("$\(comida.precio)")
                                    .foregroundColor(Color.gray)
                            }
                            Image("Numero2")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: .trailing)
                        }
                        Image("Imagen2")
                            .resizable()
                            .frame(width: 317, height: 60, alignment: .leading)
                    }
                }
            }
        }
    }
}

struct ListaComidaView_Previews: PreviewProvider {
    static var previews: some View {
        ListaComidaView()
    }
}
