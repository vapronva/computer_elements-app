//
//  ContentView.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 21.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingInformation: Bool = false
    @State var isNavigationBarHidden: Bool = true
    var body: some View {
        NavigationView {
            ZStack {
                Color(.sRGB, red: 0.039, green: 0.039, blue: 0.039, opacity: 1.0)
                    .ignoresSafeArea(edges: .all)
//                switch(selection) {
//                case 0: InformationView()
//                case 1: MainScreenList()
//                case 2: InformationView()
//                default: InformationView()
//                }
//                MainScreenList()
                MainScreenList()
                    .sheet(isPresented: $isShowingInformation) {
                        InformationView(isShowingInformation: $isShowingInformation)
                    }
                TabViewButt(isShowingInformation: $isShowingInformation)
            }.navigationBarHidden(self.isNavigationBarHidden)
            .onAppear {
                self.isNavigationBarHidden = true
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
