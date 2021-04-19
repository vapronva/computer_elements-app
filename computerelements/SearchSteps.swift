//
//  SearchSteps.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 18.04.2021.
//

import SwiftUI


struct ayyStep: Hashable {
    let ID: Int
    let title: String
    let desc: String
}


let allMainSteps = [
    ayyStep(ID: 1, title: "Подготовка материнской платы", desc: ""),
    ayyStep(ID: 2, title: "Установка процессора", desc: ""),
    ayyStep(ID: 3, title: "Установка крепления охлаждения процессора", desc: ""),
    ayyStep(ID: 4, title: "Установка оперативной памяти", desc: ""),
    ayyStep(ID: 5, title: "Установка M2 накопителя", desc: ""),
    ayyStep(ID: 6, title: "Подготовка корпуса к установке материнской платы", desc: ""),
    ayyStep(ID: 7, title: "Установка материнской платы", desc: ""),
    ayyStep(ID: 8, title: "Установка охлаждения процессора", desc: ""),
    ayyStep(ID: 9, title: "Подготовка к установке видеокарты", desc: ""),
    ayyStep(ID: 10, title: "Установка видеокарты", desc: ""),
    ayyStep(ID: 11, title: "Установка HDD и SSD накопителей", desc: ""),
    ayyStep(ID: 12, title: "Установка блока питания", desc: ""),
    ayyStep(ID: 13, title: "Установка корпусных кулеров", desc: ""),
    ayyStep(ID: 14, title: "Подключение кулеров в систему", desc: ""),
    ayyStep(ID: 15, title: "Подключение коннекторов от корпуса", desc: ""),
    ayyStep(ID: 16, title: "Подключение накопителей в материнской плате", desc: ""),
    ayyStep(ID: 17, title: "Подключение проводов от блока питания", desc: "")
]


struct SearchSteps: View {
    @Binding var showingSettingsVariables: Bool
    @Binding var chosenCPUType: Int
    
    @State var searchText: String = ""
    
    var body: some View {
//        NavigationView {
//            ZStack {
////                StepSearchMainInfoSimpleView(titleText: "Подготовка материнской платы", descText: "", imageStep: Image("cpuDefaultImage"))
//
//            }.navigationBarSearch($searchText)
//            .navigationBarTitle(Text("Поиск шагов"))
//        }
        ZStack {
            ScrollView(.vertical) {
                ForEach(allMainSteps, id: \.self) { aStep in
                    NavigationLink(destination: StepsExplanation(stepID: aStep.ID, stepParentName: aStep.title)) {
                        StepSearchMainInfoSimpleView(titleText: aStep.title, descText: aStep.desc, imageStep: Image("linusASS_\(aStep.ID)"))
                    }.buttonStyle(PlainButtonStyle())
                    //StepSearchMainInfoSimpleView(titleText: "Подготовка материнской платы", descText: "", imageStep: Image("cpuDefaultImage"))
                }
            }.navigationBarTitle(Text("Поиск шагов"))
            .navigationBarSearch($searchText)
        }
    }
}

struct SearchSteps_Previews: PreviewProvider {
    static var previews: some View {
        SearchSteps(showingSettingsVariables: Binding.constant(false), chosenCPUType: Binding.constant(0))
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}

//            VStack {
//                List {
//                    ForEach(1 ..< 100) {
//                        Text("\($0)") }
//                }.slideOverCard(isPresented: $showingSettingsVariables) {
//                    SettingsContent(chosenCPUType: $chosenCPUType, showingSettingsVariables: $showingSettingsVariables) }
//            }.navigationBarSearch($searchText)
//        .onAppear() {
//            showingSettingsVariables = true
//        }
