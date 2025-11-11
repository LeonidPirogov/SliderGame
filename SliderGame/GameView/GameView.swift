//
//  ContentView.swift
//  SliderGame
//
//  Created by Leonid on 11.11.2025.
//

import SwiftUI

struct GameView: View {
    
    @State private var gameViewModel = GameViewViewModel()
    
    var body: some View {
        VStack {
            GameSliderView(gameViewModel: gameViewModel, color: .red)
            
            Button("Проверь меня", action: gameViewModel.showAlert)
                .padding()
                .alert(
                    "Your Score",
                    isPresented: $gameViewModel.alertIsPresented,
                    actions: {}
                ) {
                    Text(gameViewModel.scores.formatted())
                }
            
            Button("начать заново", action: gameViewModel.reset)
        }
    }
}

#Preview {
    GameView()
}
