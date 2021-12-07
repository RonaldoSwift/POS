//
//  ComidaView.swift
//  POS
//
//  Created by Ronaldo Andre Vargas Huaman on 6/12/21.
//

import SwiftUI

struct ComidaView: View {
    
    var body: some View {
        VStack{
            ZStack{
                Image("Fondo")
                    .resizable()
                    .frame(width: 250, height: 300, alignment: .center)
                VStack(alignment: .center, spacing: 10){
                    Image("Comida1")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(80)
                    Text("Spicy seasoned seafood noodles")
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .padding(4)
                    Text("$2.29")
                        .font(.title3)
                        .foregroundColor(Color.white)
                    Text("20Bowls available")
                        .foregroundColor(Color.gray)
                        .padding()
                }
                .padding(39)
            }
            
            ZStack{
                Image("Fondo")
                    .resizable()
                    .frame(width: 250, height: 300, alignment: .center)
                VStack(alignment: .center, spacing: 10){
                    Image("Comida2")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(80)
                    Text("Healthy noodle with spinach leaf")
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .padding(4)
                    Text("$3.29")
                        .font(.title3)
                        .foregroundColor(Color.white)
                    Text("20Bowls available")
                        .foregroundColor(Color.gray)
                        .padding()
                }
                .padding(39)
            }
        }
    }
}

struct ComidaView_Previews: PreviewProvider {
    static var previews: some View {
        ComidaView()
    }
}
