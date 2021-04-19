//
//  SettingsContent.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 18.04.2021.
//

import SwiftUI

public struct SOCEmptyButton: ButtonStyle {
    public init() {}
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.body.weight(.bold))
            .padding(.top, 18)
            .foregroundColor(.accentColor)
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

struct SettingsContent: View {
    @Binding var chosenCPUType: Int
    @Binding var showingSettingsVariables: Bool
    var processorTypes: Array<String> = ["Intel", "AMD"]
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            VStack {
                Text("Выберите прозводителя процессора").font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
            }
            ZStack {
                Picker("$chosenProcessorType", selection: $chosenCPUType) {
                    ForEach(0 ..< processorTypes.count) {
                        Text("\(self.processorTypes[$0])") }}
                    .pickerStyle(SegmentedPickerStyle())
            }
            VStack(spacing: 0) {
                Button("Готово", action: {
                    showingSettingsVariables = false
                }).buttonStyle(SOCEmptyButton())
            }
        }.frame(height: 200)
    }
}

struct SettingsContent_Previews: PreviewProvider {
    static var previews: some View {
        SettingsContent(chosenCPUType: Binding.constant(1), showingSettingsVariables: Binding.constant(true))
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
