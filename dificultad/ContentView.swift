import SwiftUI

struct ContentView: View {
    @State private var showDifficulties = false
    @State private var playButtonOpacity = 1.0

    @State private var easyButtonOpacity = 1.0
    @State private var normalButtonOpacity = 1.0
    @State private var hardButtonOpacity = 1.0

    @State private var showEasyDescription = false
    @State private var showNormalDescription = false
    @State private var showHardDescription = false

    var body: some View {
        VStack(spacing: 20) {

            if !showDifficulties {
                Button(action: {
                    withAnimation {
                        showDifficulties = true
                        playButtonOpacity = 0.0
                    }
                }) {
                    HStack {
                        Image(systemName: "arrowtriangle.right.fill")
                        Text("Play")
                            .font(.custom("ByteBounce", size: 20))
                    }
                    .frame(width: 100, height: 30)
                    .border(Color.white, width: 2)
                    .cornerRadius(3)
                    .foregroundColor(.white)
                }
                .opacity(playButtonOpacity)
            }

            if showDifficulties {
                
                if !showEasyDescription {
                    Button(action: {
                        withAnimation {
                            showEasyDescription = true
                            easyButtonOpacity = 0.0
                        }
                    }) {
                        Text("Easy")
                            .font(.custom("ByteBounce", size: 18))
                            .frame(width: 100, height: 30)
                            .border(Color.green, width: 2)
                            .foregroundColor(.green)
                    }
                    .opacity(easyButtonOpacity)
                }

                if showEasyDescription {

                    imagen(imagen: "easy")
                    Text("Easy mode: Los mounstros y las misiones se vuelven sencillas, pero el juego es más lento.")
                        .font(.custom("ByteBounce", size: 16))
                        .foregroundColor(.blue)
                        .padding()
                }

             
                if !showNormalDescription {
                    Button(action: {
                        withAnimation {
                            showNormalDescription = true
                            normalButtonOpacity = 0.0
                        }
                    }) {
                        Text("Normal")
                            .font(.custom("ByteBounce", size: 18))
                            .frame(width: 100, height: 30)
                            .border(Color.yellow, width: 2)
                            .foregroundColor(.yellow)
                    }
                    .opacity(normalButtonOpacity)
                }

                if showNormalDescription {
                    imagen(imagen: "normal")
                    Text("Normal mode: Los enemigos y la dificultad se mantiene como fue programado originalmente.")
                        .font(.custom("ByteBounce", size: 16))
                        .foregroundColor(.orange)
                        .padding()
                }

             
                if !showHardDescription {
                    Button(action: {
                        withAnimation {
                            showHardDescription = true
                            hardButtonOpacity = 0.0
                        }
                    }) {
                        Text("Hard")
                            .font(.custom("ByteBounce", size: 18))
                            .frame(width: 100, height: 30)
                            .border(Color.red, width: 2)
                            .foregroundColor(.red)
                    }
                    .opacity(hardButtonOpacity)
                }

                if showHardDescription {
                    imagen(imagen: "hard")
                    Text("Hard mode: Si mueres, no hay opcion de revivir")
                        .font(.custom("ByteBounce", size: 16))
                        .foregroundColor(.purple)
                        .padding()
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)

    }
}


#Preview {
    ContentView()
}
