//
//  InformationView.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 18.04.2021.
//

import SwiftUI

struct InformationView: View {
    @Binding var isShowingInformation: Bool
    var ceapi: CEAPI = CEAPI()
    @State var statusCEAPI: String = ""

    var body: some View {
        NavigationView {
            ZStack {
                Color(.sRGB, red: 0.039, green: 0.039, blue: 0.039, opacity: 1.0)
                    .ignoresSafeArea(edges: .all)
                Form {
                    Section(header: Text("О приложении")) {
                        Text("Проект “Создание приложения для помощи людям в сборке и обслуживании ПК”")
                            .multilineTextAlignment(.leading)
                        Text("Данное интерактивное приложение, позволит Вам собрать свой собственный компьютер, поможет в последующем его обслуживании, а также покажет последние новости в мире технологий.")
                            .multilineTextAlignment(.leading)
                    }
                    Section(header: Text("Версия")) {
                        Text("DEV 0.1.1 (build 5)")
                            .multilineTextAlignment(.leading)
                    }
                    Section(header: Text("Cостояние API")) {
                        Text("\(statusCEAPI)")
                            .multilineTextAlignment(.leading)
                            .onAppear() {
                                ceapi.getStatusOfAPI() { result in
                                    self.statusCEAPI = result }}
                    }
                    Section(header: Text("Использованные ресурсы")) {
                        NavigationLink(destination: List {
                            Text("трубо белка")
                            Text("турбо стрелка")
                            Text("си джей значит (cg matter)")
                            Text("ой, си джи торговец")
                        }) {
                            Text("3D-модели")
                        }
                        NavigationLink(destination: List {
                            Text("ACarousel")
                            Text("SlideOverCard")
                            Text("Alamofire")
                            Text("SwiftyJSON")
                        }) {
                            Text("Открытые библиотеки")
                        }
                        NavigationLink(destination: List {
                        }) {
                            Text("Текстовый материал")
                        }
                    }
                }
            }.navigationBarTitle(Text("Информация о приложении"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                isShowingInformation = false }) {
                Text("Готово").bold() })
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView(isShowingInformation: Binding.constant(true))
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
