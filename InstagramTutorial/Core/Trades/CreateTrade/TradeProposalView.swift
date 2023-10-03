//
//  TradeProposalView.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/27/23.
//

import SwiftUI

struct TradeProposalView: View {
    var body: some View {
        VStack {
            
            VStack (alignment: .leading){
                HStack {
                    ProfileIconLeft()
                        .padding(.leading)
                        .padding(.bottom)
                    
                    Spacer()
                    
                }
                
                
                Text("Trade message goes here")
                    .padding(.bottom)
                    .padding(.leading)
                
            }

                    
           
            
            Image("riri")
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
                
                Text("1 photo")
            }
            
            Image("migos")
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
            
            HStack {
                ProfileIconLeft()
                    .padding(.leading)
                .padding(.top)
                
                Spacer()
            }
            
            HStack{
                Text("Respond to trade?")
                Spacer()
                
                Button {
                 //action
                } label: {
                    Text("Accept")
                        .frame(width: 80, height: 32)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                        .background(Color(.systemBlue))
                        .cornerRadius(6)
                }

                Button {
                 //action
                } label: {
                    Text("Decline")
                        .frame(width: 80, height: 32)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                        .background(Color(.red))
                        .cornerRadius(6)
                }
                
            }
            .padding(.horizontal)
            
            Divider().padding(.top)
        }
    }
}

struct TradeProposalView_Previews: PreviewProvider {
    static var previews: some View {
        TradeProposalView()
    }
}
