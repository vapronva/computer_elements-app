//
//  StepSearchMainInfoSimpleView.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 19.04.2021.
//

import SwiftUI

struct StepSearchMainInfoSimpleView: View {
    var titleText: String
    var descText: String
    var imageStep: Image
    var body: some View {
        ZStack {
            Color(UIColor.systemGray6)
                .frame(height: 135)
            HStack {
                VStack(alignment: .leading) {
                    Text("\(titleText)")
                        .font(.system(size: 20, weight: .semibold))
                        .multilineTextAlignment(.leading)
                    if descText != "" {
                        Text("\(descText)")
                            .multilineTextAlignment(.leading)
                    }
                }.frame(height: 110)
                    .padding(.horizontal)
                Spacer()
                ZStack {
                    imageStep
                        .resizable()
                        .frame(width: 120, height: 120)
                        .scaledToFill()
                        .cornerRadius(20.0)
                }
                    .padding(.trailing, 7.5)
            }
        }.cornerRadius(20.0)
        .padding(.horizontal)
        .padding(.bottom, 2)
    }
}

struct StepSearchMainInfoSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        StepSearchMainInfoSimpleView(titleText: "Подготовка материнской платы", descText: "", imageStep: Image("cpuDefaultImage"))
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
