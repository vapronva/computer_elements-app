//
//  IntroCarouselView.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 16.04.2021.
//

import SwiftUI

struct IntroCarouselView: View {
    @State private var showingAlert = false
    var image: Image
    var body: some View {
        ZStack {
            Color.black
//            Button (action: {}) {
//                image
//                    .resizable()
//                    .scaledToFill() }
//                .simultaneousGesture(LongPressGesture().onEnded { _ in
//                    showingAlert = true })
//                .alert(isPresented: $showingAlert) {
//                    Alert(title: Text("Упс, эта функция ещё не готова!"), message: Text("Здесь скоро будут новости!\nА пока наслаждайтесь красивыми рендерами AMD Radeon VII с рефересным дизайном, выпущенной во время CES 2019."), dismissButton: .default(Text("OK")))
//            }
            image
                .resizable()
                .scaledToFill()
        }
    }
}

struct IntroCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        IntroCarouselView(image: Image("amd_radeon_vii_render4"))

    }
}
