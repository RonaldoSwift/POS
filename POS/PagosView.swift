//
//  PagosView.swift
//  POS
//
//  Created by Ronaldo Andre Vargas Huaman on 13/12/21.
//

import SwiftUI

struct PagosView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                
                Text("Payment Method                       ")
                    .font(.title)
                    .bold()
                
                HStack{
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
                
                Text("Cardholder Name                                              ")
                Text("Levi Ackerman                                                ")
                    .padding()
                    .background(Color("ColorDeBordeDeDescripcion"))
                    .cornerRadius(8)
                
                Text("Card Number                                                   ")
                Text("2564 1421 0897 1244                                   ")
                    .padding()
                    .background(Color("ColorDeBordeDeDescripcion"))
                    .cornerRadius(8)
                
                HStack(spacing: 20){
                    VStack(alignment: .leading){
                        Text("Expiration Date")
                        Text(" 02/2022              ")
                            .padding()
                            .background(Color("ColorDeBordeDeDescripcion"))
                            .border(Color("ColorDeBordeDeDescripcion"),width: 1)
                            .cornerRadius(8)
                    }
                    VStack(alignment: .leading){
                        Text("CVV")
                        Text("⬤⬤⬤                ")
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color("ColorDeBordeDeDescripcion"))
                            .cornerRadius(8)
                    }
                }
                
                HStack(spacing: 20){
                    VStack(alignment: .leading){
                        Text("Order Type")
                        Text(" Dine In                 ")
                            .padding()
                            .border(Color("ColorDeBordeDeDescripcion"),width: 1)
                            .cornerRadius(8)
                    }
                    VStack(alignment: .leading){
                        Text("Table no.")
                        Text("140                        ")
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color("ColorDeBordeDeDescripcion"))
                            .cornerRadius(8)
                    }
                }
                
                HStack(spacing: 20){
                    Button {
                    } label: {
                        Text("Cancel                  ")
                            .padding()
                            .foregroundColor(Color("ColorDeBotonDeConfirmacion"))
                            .border(Color("ColorDeBotonDeConfirmacion"),width: 1)
                            .cornerRadius(8)
                    }
                    Button {
                    } label: {
                        Text("Confirm Payment")
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color("ColorDeBotonDeConfirmacion"))
                            .cornerRadius(8)
                    }
                }
            }
            .navigationBarTitle("Payment", displayMode: .large)
            .background(Color("ColorFondoDePantalla"))
        }
    }
}

struct PagosView_Previews: PreviewProvider {
    static var previews: some View {
        PagosView().preferredColorScheme(.dark)
    }
}
