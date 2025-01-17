//
//  ContentView.swift
//  Shared
//
//  Created by Sherry Xu on 2021-12-27.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var gameViewModel: KingsCupViewModel
    var body: some View {
        VStack {
        // PlayerListView(players: gameViewModel.players)
        PlayerListView(players: gameViewModel.players!)
                .padding(.top)
                .padding(.leading)
        Spacer()
        CardView(card: gameViewModel.curr_card!)
            .onTapGesture {
                gameViewModel.flip()
            }
            .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.appBackground)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(gameViewModel: KingsCupViewModel(num_players: 4))
    }
}
