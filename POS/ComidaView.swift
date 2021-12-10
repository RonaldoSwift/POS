//
//  ComidaView.swift
//  POS
//
//  Created by Ronaldo Andre Vargas Huaman on 6/12/21.
//

import SwiftUI

struct ComidaView: View {
    
    let baseDeDatosDeComida : BaseDeDatosComida = BaseDeDatosComida()
    
    let comidas: [Comida] = [Comida(imagen: "Comida1",
                                    nombre: "Spicy seasoned seafood noodles",
                                    precio: 2.29,
                                    ordenes: "\(20)Bowls available"),
                             Comida(imagen: "Comida2",
                                    nombre: "Healthy noodle with spinach leaf",
                                    precio: 3.29,
                                    ordenes: "\(20) Bowls available")
    ]
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                ForEach(comidas){ comida in
                    ZStack{
                        Image("Fondo")
                            .resizable()
                            .frame(width: 250, height: 300, alignment: .center)
                        VStack(alignment: .center, spacing: 10){
                            Image(comida.imagen)
                                .resizable()
                                .frame(width: 150, height: 150)
                                .cornerRadius(80)
                            Text(comida.nombre)
                                .font(.title2)
                                .foregroundColor(Color.white)
                                .frame(width: 160, height: 70, alignment: .center)
                            Text("$\(comida.precio)")
                                .font(.title3)
                                .foregroundColor(Color.white)
                            Text(comida.ordenes)
                                .foregroundColor(Color.gray)
                                .padding()
                        }
                        .padding(39)
                    }
                }
            }
            .navigationBarTitle("Comidas")
            .navigationBarItems(leading: Button("Demo", action: {
                print("Probando probando...")
            }), trailing: NavigationLink {
                FoodView()
            } label: {
                Text("Siguiente")
            }
            )
        }
    }
}

struct ComidaView_Previews: PreviewProvider {
    static var previews: some View {
        ComidaView()
    }
}
