//
//  TabViewButt.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 18.04.2021.
//

import SwiftUI
import UIKit

struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView { UIVisualEffectView() }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
}

struct TabViewButt: View {
    @Binding var isShowingInformation: Bool
    var iconSize: CGFloat = 24
    var heightOfH: CGFloat = 60
    var heightOfTabView: CGFloat = 75
    var spacingForHorizontalElements: CGFloat = 18
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Color(UIColor.systemGray5)
                .frame(height: 2)
            ZStack {
                VisualEffectView(effect: UIBlurEffect(style: .dark))
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: heightOfTabView)
                VStack {
                    HStack {
                        Button(action: {
                            isShowingInformation = true
                        }) {
                            Image(systemName: "info.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(height: iconSize)
                                .padding(.leading, spacingForHorizontalElements)
                        }.buttonStyle(PlainButtonStyle())
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "display")
                                .resizable()
                                .scaledToFit()
                                .frame(height: iconSize)
                        }.buttonStyle(PlainButtonStyle())
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "magnifyingglass.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(height: iconSize)
                                .padding(.trailing, spacingForHorizontalElements)
                        }.buttonStyle(PlainButtonStyle())
                    }.frame(height: heightOfH)
                    Spacer()
                }.frame(height: heightOfTabView)
            }
        }.ignoresSafeArea(edges: .bottom)
    }
}

struct TabViewButt_Previews: PreviewProvider {
    static var previews: some View {
        TabViewButt(isShowingInformation: Binding.constant(false))
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
