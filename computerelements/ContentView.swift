//
//  ContentView.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 21.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            MainScreenList()
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
