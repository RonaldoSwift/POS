//
//  ListaComidaView.swift
//  POS
//
//  Created by Ronaldo Andre Vargas Huaman on 8/12/21.
//

import SwiftUI

struct CarritoView: View {
    
    var baseDeDatosDeComida : BaseDeDatosComida = BaseDeDatosComida()
    
    var comidas: [Comida] = [Comida.init(imagen: "Comida1",
                                         nombre: "Spicy seasoned sea...",
                                         precio: 2.29,
                                         cantidad: 2.0,
                                         ordenes: ""),
                             Comida.init(imagen: "Comida1",
                                         nombre: "Spicy seasoned sea...",
                                         precio: 2.29,
                                         cantidad: 2.0,
                                         ordenes: ""),
                             Comida.init(imagen: "Comida1",
                                         nombre: "Spicy seasoned sea...",
                                         precio: 2.29,
                                         cantidad: 2.0,
                                         ordenes: ""),
    ]
    
    var body: some View {
        
        ScrollView{
            ForEach(comidas, id: \.id){ comida in
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
                            Text("\(comida.cantidad)")
                                .padding()
                                .background(Color("ColorDeFondoDeDescripcion"))
                                .border(Color("ColorDeBordeDeDescripcion"), width: 1)
                                .cornerRadius(8)
                        }
                        Text("Please, just a little bit spicy only.")
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("ColorDeDescripcion"))
                            .padding()
                            .background(Color("ColorDeFondoDeDescripcion"))
                            .cornerRadius(8)
                            .border(Color("ColorDeBordeDeDescripcion"), width: 1)
                        
                    }
                    VStack{
                        Text("$ \(comida.precio * comida.cantidad)")
                        Button {
                        } label: {
                            Image(systemName: "trash.fill")
                                .foregroundColor(Color("ColorDeBordeDelTacho"))
                                .padding()
                                .cornerRadius(8)
                                .border(Color("ColorDeBordeDelTacho"),width: 1)
                        }
                    }
                }
            }
        }
        .navigationBarTitle("Carrito de compras")
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

struct ListaComidaView_Previews: PreviewProvider {
    static var previews: some View {
        CarritoView().preferredColorScheme(.dark)
    }
}
