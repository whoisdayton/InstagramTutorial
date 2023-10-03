//
//  RecentTradesView.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/27/23.
//

import SwiftUI

struct RecentTradesView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    SmallRecentTradeView()
                }
                .padding(.top, 8)
            }
            .navigationTitle("🌎 Recent trades")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Photo Exchange")
                        .fontWeight(.bold)
                }
            
            }
        }
    }
}

struct RecentTradesView_Previews: PreviewProvider {
    static var previews: some View {
        RecentTradesView()
    }
}
