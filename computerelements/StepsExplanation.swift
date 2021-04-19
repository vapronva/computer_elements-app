//
//  StepsExplanation.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 19.04.2021.
//

import SwiftUI

struct stepExplanation: Hashable {
    let stepID: Int
    let ID: Int
    let desc: String
    let videoName: String
}

let stepssExplanation = [
    stepExplanation(stepID: 1, ID: 1, desc: "Достаньте Материнскую плату из коробки, и вытащите её из антистатического пакета", videoName: ""),
    stepExplanation(stepID: 1, ID: 2, desc: "Удалите наклейки, расположенные на радиаторах охлаждения и тд(при их наличии)", videoName: ""),
    
    stepExplanation(stepID: 2, ID: 1, desc: "Достаньте процессор из его упаковки", videoName: ""),
    stepExplanation(stepID: 2, ID: 2, desc: "Откройте сокет на материнской плате, нажав на небольшой рычажок, расположенный около него и потяните его вверх. После чего откройте его крышку.(Intel)/Поднимите небольшой рычажок, расположенный рядом с сокетом(AMD)", videoName: ""),
    stepExplanation(stepID: 2, ID: 3, desc: "Расположите процессор в сокете, совместив его ключи с ключами, расположенные на материнской плате.(Intel)/Поместите процессор в сокет, совместив ключ процессора с ключом, расположенным на материнской плате.(AMD)", videoName: ""),
    stepExplanation(stepID: 2, ID: 4, desc: "Закройте крышку сокета, и опустите рычажок в его изначальное положение, и убедитесь что он зафиксирован(Intel)/С установленным процессором опустите рычажок сбоку от сокета вниз, до своего изначального положения(AMD)", videoName: ""),
    
    stepExplanation(stepID: 3, ID: 1, desc: "Расположите пластиковое крепление охлаждения (которое идёт в комплекте с охлаждением) на обратной стороне материнской платы со стороны процессора", videoName: ""),
    stepExplanation(stepID: 3, ID: 2, desc: "Проденьте сквозь отверстия крепежные болты", videoName: ""),
    stepExplanation(stepID: 3, ID: 3, desc: "Переверните материнскую плату и прикрутите металические гайки-проставки", videoName: ""),
    stepExplanation(stepID: 3, ID: 4, desc: "Расположите два пластиковых крепления на Материнской плате и совместите отверстия", videoName: ""),
    stepExplanation(stepID: 3, ID: 5, desc: "Закрутите крепежные винты", videoName: ""),
    
    stepExplanation(stepID: 4, ID: 1, desc: "Достаньте Оперативную память из её упаковки", videoName: ""),
    stepExplanation(stepID: 4, ID: 2, desc: "На материнской плате откройте язычки, расположенные на слотах под Оперативную память", videoName: ""),
    stepExplanation(stepID: 4, ID: 3, desc: "Сопоставьте ключи на Оперативной памяти и разъёме ", videoName: ""),
    stepExplanation(stepID: 4, ID: 4, desc: "Надавите на планку Оперативной памяти, язычки должны зафиксировать планку памяти", videoName: ""),
    
    stepExplanation(stepID: 5, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 5, ID: 2, desc: "", videoName: ""),
    stepExplanation(stepID: 5, ID: 3, desc: "", videoName: ""),
    stepExplanation(stepID: 5, ID: 4, desc: "", videoName: ""),
    
    stepExplanation(stepID: 6, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 6, ID: 2, desc: "", videoName: ""),
    stepExplanation(stepID: 6, ID: 3, desc: "", videoName: ""),
    stepExplanation(stepID: 6, ID: 4, desc: "", videoName: ""),
    
    stepExplanation(stepID: 7, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 7, ID: 2, desc: "", videoName: ""),
    
    stepExplanation(stepID: 8, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 8, ID: 2, desc: "", videoName: ""),
    stepExplanation(stepID: 8, ID: 3, desc: "", videoName: ""),
    stepExplanation(stepID: 8, ID: 4, desc: "", videoName: ""),
    stepExplanation(stepID: 8, ID: 5, desc: "", videoName: ""),
    stepExplanation(stepID: 8, ID: 6, desc: "", videoName: ""),
    stepExplanation(stepID: 8, ID: 7, desc: "", videoName: ""),
    stepExplanation(stepID: 8, ID: 8, desc: "", videoName: ""),
    stepExplanation(stepID: 8, ID: 9, desc: "", videoName: ""),
    stepExplanation(stepID: 8, ID: 10, desc: "", videoName: ""),
    
    stepExplanation(stepID: 9, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 9, ID: 2, desc: "", videoName: ""),
    stepExplanation(stepID: 9, ID: 3, desc: "", videoName: ""),
    
    stepExplanation(stepID: 10, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 10, ID: 2, desc: "", videoName: ""),
    stepExplanation(stepID: 10, ID: 3, desc: "", videoName: ""),
    
    stepExplanation(stepID: 11, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 11, ID: 2, desc: "", videoName: ""),
    stepExplanation(stepID: 11, ID: 3, desc: "", videoName: ""),
    
    stepExplanation(stepID: 12, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 12, ID: 2, desc: "", videoName: ""),
    stepExplanation(stepID: 12, ID: 3, desc: "", videoName: ""),
    
    stepExplanation(stepID: 13, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 13, ID: 2, desc: "", videoName: ""),
    stepExplanation(stepID: 13, ID: 3, desc: "", videoName: ""),
    
    stepExplanation(stepID: 14, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 14, ID: 2, desc: "", videoName: ""),
    
    stepExplanation(stepID: 15, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 15, ID: 2, desc: "", videoName: ""),
    stepExplanation(stepID: 15, ID: 3, desc: "", videoName: ""),
    stepExplanation(stepID: 15, ID: 4, desc: "", videoName: ""),
    stepExplanation(stepID: 15, ID: 5, desc: "", videoName: ""),
    stepExplanation(stepID: 15, ID: 6, desc: "", videoName: ""),
    stepExplanation(stepID: 15, ID: 7, desc: "", videoName: ""),
    stepExplanation(stepID: 15, ID: 8, desc: "", videoName: ""),
    stepExplanation(stepID: 15, ID: 9, desc: "", videoName: ""),
    stepExplanation(stepID: 15, ID: 10, desc: "", videoName: ""),
    stepExplanation(stepID: 15, ID: 11, desc: "", videoName: ""),
    stepExplanation(stepID: 15, ID: 12, desc: "", videoName: ""),
    
    stepExplanation(stepID: 16, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 16, ID: 2, desc: "", videoName: ""),
    stepExplanation(stepID: 16, ID: 3, desc: "", videoName: ""),
    
    stepExplanation(stepID: 17, ID: 1, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 2, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 3, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 4, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 5, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 6, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 7, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 8, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 9, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 10, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 11, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 12, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 13, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 14, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 15, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 16, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 17, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 18, desc: "", videoName: ""),
    stepExplanation(stepID: 17, ID: 19, desc: "", videoName: "")
]

struct StepsExplanation: View {
    var stepID: Int
    var stepParentName: String
    var body: some View {
        VStack {
            ZStack {
                Color(UIColor.systemGray5)
            }.frame(height: 480)
            .cornerRadius(20.0)
            .padding(.horizontal)
            Form {
                ForEach(0..<stepssExplanation.count) {
                    if stepssExplanation[$0].stepID == stepID {
                        Text("\(stepssExplanation[$0].desc)")
                    }
                }
            }
        }.navigationBarTitle(Text("\(stepParentName)"), displayMode: .inline)
    }
}

struct StepsExplanation_Previews: PreviewProvider {
    static var previews: some View {
        StepsExplanation(stepID: 1, stepParentName: "Подготовка материнской платы")
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
