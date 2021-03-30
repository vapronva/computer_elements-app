//
//  MainScreenList.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 30.03.2021.
//

import SwiftUI

struct MainScreenList: View {
    var body: some View {
        ZStack {
            ScrollView {
                CarouselView(itemHeight: 400, views: [AnyView(AppStoreLikeViewWithDesc(thisItem: ItemCarouselMainIntro(name: "CUM CUM 1", description: "Lorem ipsum dolor sit amet", subtitle: "CUM", image: "cpuDefaultImage"))), AnyView(AppStoreLikeViewWithDesc(thisItem: ItemCarouselMainIntro(name: "CUM CUM 2", description: "Lorem ipsum dolor sit amet", subtitle: "CUM", image: "cpuDefaultImage"))), AnyView(AppStoreLikeViewWithDesc(thisItem: ItemCarouselMainIntro(name: "CUM CUM 3", description: "Lorem ipsum dolor sit amet", subtitle: "CUM", image: "cpuDefaultImage"))), AnyView(AppStoreLikeViewWithDesc(thisItem: ItemCarouselMainIntro(name: "CUM CUM 4", description: "Lorem ipsum dolor sit amet", subtitle: "CUM", image: "cpuDefaultImage"))), AnyView(AppStoreLikeViewWithDesc(thisItem: ItemCarouselMainIntro(name: "CUM CUM 5", description: "Lorem ipsum dolor sit amet", subtitle: "CUM", image: "cpuDefaultImage"))), AnyView(AppStoreLikeViewWithDesc(thisItem: ItemCarouselMainIntro(name: "CUM CUM 6", description: "Lorem ipsum dolor sit amet", subtitle: "CUM", image: "cpuDefaultImage")))])
                ZStack {
                    RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 30, endRadius: 250)
                        .cornerRadius(15)
                        .frame(minHeight: 200)
                        .padding(.horizontal)
                    Text("Begin Building the PC")
                        .font(Font.system(size: 27, weight: .black, design: .default))
                }
            }
        }
    }
}

struct MainScreenList_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenList()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
