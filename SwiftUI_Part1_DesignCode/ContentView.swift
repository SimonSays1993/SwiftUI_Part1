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
            TitleView()
                .blur(radius: 20.0)
            //This is are background
            BackCardView()
                .background(Color("card4"))
                .cornerRadius(20.0)
                .shadow(radius: 20.0)
                .offset(x: 0, y: -40)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(10.0))
                .rotation3DEffect(.degrees(10), axis: (x: 0.8, y: 0.2, z: 0.9))
                .blendMode(.hardLight)
            
            BackCardView()
                .background(Color("card3"))
                .cornerRadius(20.0)
                .shadow(radius: 20.0)
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(5.0))
                .rotation3DEffect(.degrees(5), axis: (x: 10.0, y: 0.0, z: 0.0))
                .blendMode(.hardLight)
            //This is are foreground
            CertificateView()
                .blendMode(.hardLight)
            
            BottomCardView()
                .blur(radius: 20.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
