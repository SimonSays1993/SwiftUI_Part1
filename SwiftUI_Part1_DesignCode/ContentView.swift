//
//  ContentView.swift
//  SwiftUI_Part1_DesignCode
//
//  Created by Simon Mcneil on 2021-12-30.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        //We use ZStack to act as a layer underneath the card. Acts as background
        ZStack {
            TitleView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
            //This is are background
            BackCardView()
                .background(show ? Color("card3") : Color("card4"))
                .cornerRadius(20.0)
                .shadow(radius: 20.0)
                .offset(x: 0, y: show ? -400 : -40)
                .scaleEffect(0.90)
                .rotationEffect(.degrees(show ? 0 : 10.0))
                .rotation3DEffect(.degrees(10), axis: (x: 10.0, y: 0.0, z: 0.0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.5))
            
            BackCardView()
                .background(show ? Color("card4") : Color("card3"))
                .cornerRadius(20.0)
                .shadow(radius: 20.0)
                .offset(x: 0, y: show ? -200 : -20)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(show ? 0 : 5))
                .rotation3DEffect(.degrees(5), axis: (x: 10.0, y: 0.0, z: 0.0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.3))
            
            //This is are foreground
            CertificateView()
                .blendMode(.hardLight)
                .onTapGesture {
                    //Automatically switches the bool value everytime we tap on the view
                    self.show.toggle()
                }
            
            BottomCardView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
