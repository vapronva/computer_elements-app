//
//  InformationView.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 18.04.2021.
//

import SwiftUI

struct InformationView: View {
    @Binding var isShowingInformation: Bool
    
    @State private var chosenProcessorType: Int = 0
    var processorTypes: Array<String> = ["Intel", "AMD"]
    
    @State private var chosenCPUCoolingType: Int = 0
    var cpuCoolingTypes: Array<String> = ["Воздушное", "Водяное"]
    
    @State private var chosenGPUType: Int = 0
    var gpuTypes: Array<String> = [""]

    var body: some View {
        NavigationView {
            ZStack {
                Color(.sRGB, red: 0.039, green: 0.039, blue: 0.039, opacity: 1.0)
                    .ignoresSafeArea(edges: .all)
                Form {
                    Section(header: Text("Процессор")) {
                        HStack {
                            Text("Производитель")
                            Picker("$chosenProcessorType", selection: $chosenProcessorType) {
                                ForEach(0 ..< processorTypes.count) {
                                    Text("\(self.processorTypes[$0])") }}
                                .pickerStyle(SegmentedPickerStyle()) }
                        HStack {
                            Text("Тип охлаждения")
                            Picker("$chosenCPUCoolingType", selection: $chosenCPUCoolingType) {
                                ForEach(0 ..< cpuCoolingTypes.count) {
                                    Text("\(self.cpuCoolingTypes[$0])") }}
                                .pickerStyle(SegmentedPickerStyle()) }
                    }
                    Section(header: Text("Видеокарта")) {
                        Picker("Модель видеокарты", selection: $chosenGPUType) {
                                ForEach(2 ..< 100) {
                                    Text("\($0)")}}
                        Picker("Модель видеокарты", selection: $chosenGPUType) {
                                ForEach(2 ..< 100) {
                                    Text("\($0)")}}
                        Picker("Модель видеокарты", selection: $chosenGPUType) {
                                ForEach(2 ..< 100) {
                                    Text("\($0)")}}
                        Picker("Модель видеокарты", selection: $chosenGPUType) {
                                ForEach(2 ..< 100) {
                                    Text("\($0)")}}
                    }
                    Section(header: Text("О приложении")) {
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                            .multilineTextAlignment(.leading)
                    }
                }
            }.navigationBarTitle(Text("Информация и настройки"), displayMode: .inline)
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
