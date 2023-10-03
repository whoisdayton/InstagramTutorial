//
//  TradesView.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/27/23.
//

import SwiftUI

struct TradesView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    TradeProposalView()
                    
                    TradeOfferView()
                }
            }
            .navigationTitle(
                Text("📥 Trades")
            )
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Photo Exchange")
                        .fontWeight(.bold)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        //CreateTradeView()
                        
                    } label: {
                        HStack{
                            Text("Create trade")
                                .font(.footnote)
                            Image(systemName: "plus.square")
                                .imageScale(.large)
                            
                            
                        }
                        .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

struct TradesView_Previews: PreviewProvider {
    static var previews: some View {
        TradesView()
    }
}
