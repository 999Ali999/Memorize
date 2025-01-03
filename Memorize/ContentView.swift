//
//  ContentView.swift
//  Memorize
//
//  Created by Ali Shafiei on 01/01/25.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    let emojis = ["🍕", "👻", "❤️", "🚀", "💻", "🍌", "🐵", "🏀", "🍆", "🗿", "🌞", "🎨", "🐠", "🐧", "🐞", "🦋", "🐢", "🦀", "🍣", "🍉", "🌮", "🥑", "🎩", "🧸", "🕹️", "🚲", "🌈", "⚽", "🎸", "🎯", "🎭", "✈️", "🏝️", "📚", "💡", "🕶️", "🧊", "🍪", "🦕", "🦄"];
    
    @State var cardCount = 4
    
    var body: some View {
        ScrollView {
            cards
        }
        .padding()
    }
    
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
    }
}


struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            
            if isFaceUp {
                base.fill(.white)
                    .shadow(color: .gray.opacity(0.4), radius: 4, x: 0, y: 2)
                base.strokeBorder(Color.gray.opacity(0.2), lineWidth: 1)
                Text(content)
                    .font(.largeTitle)
                    .shadow(color: .gray.opacity(0.1), radius: 1, x: 0, y: 1)
            } else {
                base.fill(
                    LinearGradient(
                        colors: [.blue.opacity(0.7), .purple.opacity(0.7)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .shadow(color: .gray.opacity(0.4), radius: 4, x: 0, y: 2)
            }
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.15)) {
                isFaceUp.toggle()
            }
        }
    }
}

//#Preview {
//    ContentView()
//}
