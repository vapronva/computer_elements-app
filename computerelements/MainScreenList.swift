//
//  MainScreenList.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 30.03.2021.
//

import SwiftUI
import ACarousel

struct Item: Identifiable {
    let id = UUID()
    let image: Image }

let imagesForNewsAccordings = ["amd_radeon_vii_render1", "amd_radeon_vii_render2", "amd_radeon_vii_render3", "amd_radeon_vii_render4"]

struct MainScreenList: View {
    let items: [Item] = imagesForNewsAccordings.map {
        Item(image: Image($0)) }
    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.039, green: 0.039, blue: 0.039, opacity: 1.0)
                .ignoresSafeArea(edges: .all)
            ScrollView(.vertical, showsIndicators: false) {
                // MARK:- News Carousel
                ZStack {
                    Color.black
                    ACarousel(items, spacing: 10, headspace: 30, sidesScaling: 0, isWrap: true, autoScroll: .active(6)) { item in
                        IntroCarouselView(image: item.image)
                            .frame(height: 500)
                            .cornerRadius(30) }}
                    .frame(height: 500)
                    .cornerRadius(12.0)
                    .padding(.horizontal)
                    .padding(.bottom, 7)
                // MARK:- Begin Button
                ZStack {
//                    RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 2, endRadius: 250)
//                        .cornerRadius(15)
//                        .frame(height: 240)
//                        .padding(.horizontal)
//                    Button (action: {}) {
//                        Text("Begin Building the PC")
//                            .font(Font.system(size: 27, weight: .black, design: .default))
//                            .foregroundColor(.white) }
                    Color(UIColor.systemGray6)
                        .frame(height: 240) }
                    .cornerRadius(12.0)
                    .padding(.horizontal)
                    .padding(.bottom, 7)
                // MARK:- App Updates SInfo
                ZStack {
                    Color(UIColor.systemGray6)
                        .frame(height: 135)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Text")
                            Text("Lorem ipsum dolor sit amet, consectetur.")
                                .multilineTextAlignment(.leading)}
                            .padding(.horizontal)
                        Spacer()
                        ZStack {
                            Color(UIColor.systemGray2)
                                .frame(width: 120, height: 120)
                                .cornerRadius(12.0) }
                            .padding(.trailing, 7.5) }}
                    .cornerRadius(12.0)
                    .padding(.horizontal)
                    .padding(.bottom, 7)
                // MARK:- News Section
                ZStack {
                    HStack(spacing: 15) {
                        Color(UIColor.systemGray6)
                            .frame(height: 135)
                            .cornerRadius(12.0)
                        Color(UIColor.systemGray6)
                            .frame(height: 135)
                            .cornerRadius(12.0) }}
                    .cornerRadius(12.0)
                    .padding(.horizontal)
                    .padding(.bottom, 7)
                
                ZStack {
                    HStack(spacing: 15) {
                        Color(UIColor.systemGray6)
                            .frame(height: 135)
                            .cornerRadius(12.0)
                        Color(UIColor.systemGray6)
                            .frame(height: 135)
                            .cornerRadius(12.0) }}
                    .cornerRadius(12.0)
                    .padding(.horizontal)
                    .padding(.bottom, 7)

                ZStack {
                    Color(UIColor.systemGray6)
                        .frame(height: 200) }
                    .cornerRadius(12.0)
                    .padding(.horizontal)
                    .padding(.bottom, 7)
                // MARK:- Short App Info
                ZStack {
                    Color(UIColor.systemGray6)
                        .frame(height: 135)
                    HStack {
                        ZStack {
                            Color(UIColor.systemGray2)
                                .frame(width: 120, height: 120)
                                .cornerRadius(12.0) }
                            .padding(.leading, 7.5)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("Text")
                            Text("Lorem ipsum dolor sit amet, consectetur.")
                                .multilineTextAlignment(.trailing)}
                            .padding(.horizontal) }}
                    .cornerRadius(12.0)
                    .padding(.horizontal)
                    .padding(.bottom, 7)
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
