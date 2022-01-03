//
//  BottomCardView.swift
//  SwiftUI_Part1_DesignCode
//
//  Created by Simon Mcneil on 2022-01-03.
//

import SwiftUI

struct BottomCardView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Rectangle()
                .frame(width: 40.0, height: 5.0)
                .cornerRadius(3.0)
                .opacity(0.1)
            Text("This certificate is proof that Meng To has achieved the UI Design course with approval from a Design+Code instructor")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4.0)
            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30.0)
        .shadow(radius: 20.0)
        .offset(x: 0.0, y: 500.0)
    }
}


struct BottomCardView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCardView()
    }
}
