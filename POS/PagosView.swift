//
//  PagosView.swift
//  POS
//
//  Created by Ronaldo Andre Vargas Huaman on 13/12/21.
//

import SwiftUI

struct PagosView: View {
    
    @State private var nombre: String = ""
    @State private var cvv: String = ""
    @State private var NumeroDeTarjeta: String = ""
    @State private var datoDeExpiracion: String = ""
    @State private var tipoDeOrden: String = ""
    @State private var tableNo: String = ""
    
    
    
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                
                HStack(alignment: .center, spacing: 30){
                    Button {
                        
                    } label: {
                        Image("")
                        Text("Credit Card")
                            .foregroundColor(Color.white)
                        
                    }
                    .padding()
                    .border(Color("ColorDeBordeDeDescripcion"),width: 1)
                    .cornerRadius(8)
                    
                    Button {
                        
                    } label: {
                        Image("")
                        Text("PayPal")
                            .foregroundColor(Color.white)
                        
                    }
                    .padding()
                    .border(Color("ColorDeBordeDeDescripcion"),width: 1)
                    .cornerRadius(8)
                    
                    Button {
                        
                    } label: {
                        Image("")
                        Text("Cash")
                            .foregroundColor(Color.white)
                        
                    }
                    .padding()
                    .border(Color("ColorDeBordeDeDescripcion"),width: 1)
                    .cornerRadius(8)
                }
                .padding()
                
                Text("   Cardholder Name")
                TextField("Levi Ackerman ", text: $nombre)
                    .padding()
                    .background(Color("ColorDeBordeDeDescripcion"))
                    .cornerRadius(8)
                    .padding()
                
                Text("    Card Number")
                TextField("2564 1421 0897 1244 ", text: $NumeroDeTarjeta)
                    .padding()
                    .background(Color("ColorDeBordeDeDescripcion"))
                    .cornerRadius(8)
                    .padding()
                
                HStack(spacing: 5){
                    VStack(alignment: .leading){
                        Text("    Expiration Date")
                        TextField(" 02/2022", text: $datoDeExpiracion)
                            .padding()
                            .background(Color("ColorDeBordeDeDescripcion"))
                            .border(Color("ColorDeBordeDeDescripcion"),width: 1)
                            .cornerRadius(8)
                            .padding()
                    }
                    VStack(alignment: .leading){
                        Text("    CVV")
                        TextField("⬤⬤⬤", text: $cvv)
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color("ColorDeBordeDeDescripcion"))
                            .cornerRadius(8)
                            .padding()
                    }
                }
                
                HStack(spacing: 5){
                    VStack(alignment: .leading){
                        Text("    Order Type")
                        TextField(" Dine In", text: $tipoDeOrden)
                            .padding()
                            .border(Color("ColorDeBordeDeDescripcion"),width: 1)
                            .cornerRadius(8)
                            .padding()
                    }
                    VStack(alignment: .leading){
                        Text("   Table no.")
                        TextField("140", text: $tableNo)
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color("ColorDeBordeDeDescripcion"))
                            .cornerRadius(8)
                            .padding()
                    }
                }
                
                HStack(spacing: 5){
                    Button {
                    } label: {
                        Text("Cancel                  ")
                            .padding()
                            .foregroundColor(Color("ColorDeBotonDeConfirmacion"))
                            .border(Color("ColorDeBotonDeConfirmacion"),width: 1)
                            .cornerRadius(8)
                            .padding()
                    }
                    Button {
                    } label: {
                        Text("Confirm Payment   ")
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color("ColorDeBotonDeConfirmacion"))
                            .cornerRadius(8)
                        
                    }
                }
            }
        }
        
        .navigationBarTitle("Payment", displayMode: .large)
        .background(Color("ColorFondoDePantalla"))
        
    }
}

struct PagosView_Previews: PreviewProvider {
    static var previews: some View {
        PagosView().preferredColorScheme(.dark)
    }
}
