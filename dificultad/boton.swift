//
//  boton.swift
//  dificultad
//
//  Created by WIN603 on 10/09/25.
//

import SwiftUI


struct boton: View {
    var body: some View {
        VStack{
            Button(action: {
            }) {
                HStack {
                    VStack{
                        //Image(systemName:"arrowtriangle.right.fill")
                        Text("Easy")
                    }
                    
                }
                .frame(width:50, height: 25)
                .foregroundColor(.blue)
                .font(.custom("ByteBounce", size: 20))
            }
        }
    }
}

#Preview {
    boton()
}
