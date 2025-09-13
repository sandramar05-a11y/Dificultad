//
//  imagen.swift
//  dificultad
//
//  Created by WIN603 on 10/09/25.
//

import SwiftUI

struct imagen: View {
    let imagen : String
    var body: some View {
        Image(imagen)
            .resizable()
            .scaledToFit()
            .frame(minWidth: 0, maxHeight: 150)
            
    }
}

#Preview {
    imagen(imagen: "dq")
}
