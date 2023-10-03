//
//  TradeOfferView.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/27/23.
//

import SwiftUI

struct TradeOfferView: View {
    var body: some View {
        VStack {
            HStack {
                ProfileIconLeft()
                    .padding(.leading)
                    .padding(.bottom)
                
                Spacer()
                
    
            }
            
            Text("Took this cool portrait of you")
                .padding(.bottom)
            //put above in vstack and align leading if you don't want text center aligned
            
            Image("blp-kosher")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(10)
                .overlay(content: {
                    HStack {
                        VStack (alignment: .leading){
                            Image(systemName: "camera")
                                .foregroundColor(.white)
                            Spacer()
                            Image("logo1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 15, height: 15)
                                .padding(.leading, 4)
                        }
                        .padding(.vertical, 8)
                        Spacer()
                    }.padding(.leading, 8)
                })
            
            
            VStack(alignment: .leading) {
                Text("1 photo")
                
                HStack{
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 140, height: 2)
                    
                    Image(systemName: "arrow.left.arrow.right.square")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .rotationEffect(Angle(degrees:90))
                    
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 140, height: 2)
                }
                Text("Up to 5 photos/videos")
            }
            Button {
                print("Trade")
            } label: {
                Text("Trade")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 280, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.top)
            
            
            Divider()
                .padding(.top, 30)

        }
        
    }
}

struct TradeOfferView_Previews: PreviewProvider {
    static var previews: some View {
        TradeOfferView()
    }
}
