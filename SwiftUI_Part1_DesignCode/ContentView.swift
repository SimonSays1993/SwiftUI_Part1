//
//  ContentView.swift
//  SwiftUI_Part1_DesignCode
//
//  Created by Simon Mcneil on 2021-12-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //We use ZStack to act as a layer underneath the card. Acts as background
        ZStack {
            //The VStack acts as a layer so we can put are modifers on the background card.
            VStack {
                Spacer()
            }
            .frame(width: 300, height: 220)
            .background(.blue)
            .cornerRadius(20.0)
            .shadow(radius: 20.0)
            .offset(x: 0, y: -20)
            
            //This is are foreground
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("UI Design")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Text("Certificate")
                            .foregroundColor(Color("accent"))
                    }
                    Spacer()
                    Image("Logo1")
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                Spacer()
                Image("Card1")
                    .resizable() //resizable adapts the image to the frame
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 140, alignment: .top)
                
            }
            .frame(width: 340, height: 220)
            .background(.black)
            .cornerRadius(20.0)
            .shadow(radius: 20.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
