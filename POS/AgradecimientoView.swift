//
//  AgradecimientoView.swift
//  POS
//
//  Created by Ronaldo Andre Vargas Huaman on 15/12/21.
//

import SwiftUI

struct AgradecimientoView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Text("Thank you for ordering!")
                .foregroundColor(Color.green)
                .font(.title2)
                .bold()
            Text("Sit back relax, your order is being prepared")
                .font(.title2)
            
            VStack{
                Text("We habe assingned delivery executive to your rder. It takes 30 mins to deliver for the order to arrive.")
                Button {
                } label: {
                    Text("Track my order")
                        .padding()
                        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 44)
                        .foregroundColor(Color.white)
                        .background(Color("ColorDeBoton"))
                        .cornerRadius(8)
                }
            }
            .padding()
            .border(Color("ColorDeFondoDeDescripcion"),width: 1)
            .padding()
        }
    }
}

struct AgradecimientoView_Previews: PreviewProvider {
    static var previews: some View {
        AgradecimientoView()
    }
}
