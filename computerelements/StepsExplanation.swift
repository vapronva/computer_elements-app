//
//  StepsExplanation.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 19.04.2021.
//

import SwiftUI
import AVKit

struct stepExplanation: Hashable {
    let stepID: Int
    let ID: Int
    let desc: String
    let videoName: String
}

let stepssExplanation = [
    stepExplanation(stepID: 1, ID: 1, desc: "Достаньте материнскую плату из коробки, вытащите её из антистатического пакета.", videoName: "testAnim"),
    stepExplanation(stepID: 1, ID: 2, desc: "Удалите наклейки, расположенные на радиаторах охлаждения и так далее (при их наличии).", videoName: ""),
    
    stepExplanation(stepID: 2, ID: 1, desc: "Достаньте процессор из упаковки.", videoName: ""),
    stepExplanation(stepID: 2, ID: 2, desc: "Откройте сокет на материнской плате, нажав на небольшой рычажок, расположенный около сокета и потяните этот рычажок вверх. После чего откройте крышку сокета.", videoName: ""),
    stepExplanation(stepID: 2, ID: 3, desc: "Расположите процессор в сокете, совместив его ключи (маленький треугольник в одном из углов) с ключами, расположенными на материнской плате.", videoName: ""),
    stepExplanation(stepID: 2, ID: 4, desc: "Закройте крышку сокета, опустите рычажок в его начальное положение, убедитесь что он зафиксирован.", videoName: ""),
    stepExplanation(stepID: 2, ID: 5, desc: "Поднимите небольшой рычажок, расположенный рядом с сокетом.", videoName: ""),
    stepExplanation(stepID: 2, ID: 6, desc: "Поместите процессор в сокет, совместив ключ (маленький треугольник в одном из углов) процессора с ключом, расположенными на материнской плате.", videoName: ""),
    stepExplanation(stepID: 2, ID: 7, desc: "С установленным процессором в сокете, опустите рычажок (сбоку от сокета) вниз, до своего изначального положения.", videoName: ""),
    
    stepExplanation(stepID: 3, ID: 1, desc: "Расположите пластиковое крепление охлаждения, которое идёт в коробке с данным охлаждением, на обратной стороне материнской платы со стороны процессора.", videoName: ""),
    stepExplanation(stepID: 3, ID: 2, desc: "Проденьте сквозь отверстия крепежные болты.", videoName: ""),
    stepExplanation(stepID: 3, ID: 3, desc: "Переверните материнскую плату и прикрутите металические гайки-проставки.", videoName: ""),
    stepExplanation(stepID: 3, ID: 4, desc: "Расположите два пластиковых крепления на материнской плате и совместите отверстия.", videoName: ""),
    stepExplanation(stepID: 3, ID: 5, desc: "Закрутите крепёжные винты (AMD Retention Clips).", videoName: ""),
    
    stepExplanation(stepID: 4, ID: 1, desc: "Достаньте оперативную память из её упаковки.", videoName: ""),
    stepExplanation(stepID: 4, ID: 2, desc: "На материнской плате откройте “язычки”, расположенные на слотах под оперативную память.", videoName: ""),
    stepExplanation(stepID: 4, ID: 3, desc: "Сопоставьте ключи на оперативной памяти и разъёме на материнской плате.", videoName: ""),
    stepExplanation(stepID: 4, ID: 4, desc: "Надавите на планку оперативной памяти, “язычки” должны зафиксировать планку памяти.", videoName: ""),
    
    stepExplanation(stepID: 5, ID: 1, desc: "Достаньте накопитель из упаковки, узнайте его длину в миллиметрах (проверьте инструкцию или воспользуйтесь Интернет-поиском).", videoName: ""),
    stepExplanation(stepID: 5, ID: 2, desc: "На материнской плате найдите отверстие с подходящей длинной и закрутите винт-проставку.", videoName: ""),
    stepExplanation(stepID: 5, ID: 3, desc: "Вставьте накопитель в разъём под углом 20-40 градусов, относительно материнской платы.", videoName: ""),
    stepExplanation(stepID: 5, ID: 4, desc: "Наклоните накопитель к материнской плате, зафиксируйте его винтом.", videoName: ""),
    
    stepExplanation(stepID: 6, ID: 1, desc: "Достаньте корпус из коробки, снимите защитные плёнки.", videoName: ""),
    stepExplanation(stepID: 6, ID: 2, desc: "Для последующей установки компонентов снимите боковые крышки, для снятия панелей, открутите крепёжные винты для стекла или винты, находящиеся сзади корпуса.", videoName: ""),
    stepExplanation(stepID: 6, ID: 3, desc: "Перед установкой материнской платы проверьте правильность расположения проставок в зависимости от типоразмера вашей материнской платы. Если они отсутствуют, то установите их.", videoName: ""),
    stepExplanation(stepID: 6, ID: 4, desc: "Установите заглушку от материнской платы (I/O Shield) в корпус, если он не установлен заранее.", videoName: ""),
    
    stepExplanation(stepID: 7, ID: 1, desc: "Аккуратно внесите материнскую плату в корпус, совместите отверстия под винты в материнской плате, с креплениями в корпусе.", videoName: ""),
    stepExplanation(stepID: 7, ID: 2, desc: "Закрутите винты, необходимые для крепления материнской платы.", videoName: ""),
    
    stepExplanation(stepID: 8, ID: 1, desc: "Соберите крепление со стороны охлаждения (при необходимости).", videoName: ""),
    stepExplanation(stepID: 8, ID: 2, desc: "Прикрепите кулеры к радиатору охлаждения.", videoName: ""),
    stepExplanation(stepID: 8, ID: 3, desc: "Нанесите термопасту на процессор.", videoName: ""),
    stepExplanation(stepID: 8, ID: 4, desc: "Совместите отверстия в креплении охлаждения с болтами.", videoName: ""),
    stepExplanation(stepID: 8, ID: 5, desc: "Прикрутите охлаждение на своё место.", videoName: ""),
    stepExplanation(stepID: 8, ID: 6, desc: "Соберите крепление со стороны охлаждения (при необходимости).", videoName: ""),
    stepExplanation(stepID: 8, ID: 7, desc: "Прикрепите кулеры к радиатору охлаждения.", videoName: ""),
    stepExplanation(stepID: 8, ID: 8, desc: "Нанесите термопасту на процессор.", videoName: ""),
    stepExplanation(stepID: 8, ID: 9, desc: "Совместите отверстия в креплении охлаждения с болтами (расположите охлаждение на процессоре).", videoName: ""),
    stepExplanation(stepID: 8, ID: 10, desc: "Прикрутите охлаждение на своё место (зафиксируете охлаждение, с помощью крепления-скобы).", videoName: ""),
    
    stepExplanation(stepID: 9, ID: 1, desc: "Достаньте видеокарту из коробки и из антистатического пакета.", videoName: ""),
    stepExplanation(stepID: 9, ID: 2, desc: "Уберите мешающую заглушку PCI-слота в корпусе, расположенную параллельно слоту PCI-E, в который Вы собираетесь установить видеокарту.", videoName: ""),
    stepExplanation(stepID: 9, ID: 3, desc: "Уберите защитные пластиковые колпачки PCI-слота и видеопортов с видеокарты.", videoName: ""),
    
    stepExplanation(stepID: 10, ID: 1, desc: "Нажмите на язычок PCI-разъёма, чтобы его “разблокировать”.", videoName: ""),
    stepExplanation(stepID: 10, ID: 2, desc: "Аккуратно подключите видеокарту в материнскую плату (язычок PCI-слота должен защёлкнуться).", videoName: ""),
    stepExplanation(stepID: 10, ID: 3, desc: "Закрутите фиксирующий винт, расположенный около PCI-отверстия в корпусе.", videoName: ""),
    
    stepExplanation(stepID: 11, ID: 1, desc: "Выберите место для крепления жёсткого диска или SSD накопителя, производители корпусов обычно предлагают два варианта: на внутренних стенках корпуса или в специальных каретках.", videoName: ""),
    stepExplanation(stepID: 11, ID: 2, desc: "Для установки накопителя к стенке корпуса совместите крепёжные отверстия, закрутите крепёжные винты.", videoName: ""),
    stepExplanation(stepID: 11, ID: 3, desc: "Для установки накопителя в каретке сначала вытащите её из направляющих (для этого может понадобится открутить крепёжные винты), а затем, совместив отверстия, закрутите крепежные винты. Затем зафиксируйте каретку в её направляющих (для этого может понадобится закрутить крепёжные винты).", videoName: ""),
    
    stepExplanation(stepID: 12, ID: 1, desc: "Достаньте блок питания из коробки, снимите с него все защитные пленки.", videoName: ""),
    stepExplanation(stepID: 12, ID: 2, desc: "Правильно расположите блок питания, сопоставив отверстия в корпусе с отверстиями в блоке питания (расположите блок питания, чтобы для него всегда был поток свежего воздуха).", videoName: ""),
    stepExplanation(stepID: 12, ID: 3, desc: "Закрутите крепёжные винты.", videoName: ""),
    
    stepExplanation(stepID: 13, ID: 1, desc: "Найдите оптимальное место для кулеров в корпусе для оптимального воздушного потока.", videoName: ""),
    stepExplanation(stepID: 13, ID: 2, desc: "Сопоставьте крепёжные отверстия.", videoName: ""),
    stepExplanation(stepID: 13, ID: 3, desc: "Закрутите крепёжные винты.", videoName: ""),
    
    stepExplanation(stepID: 14, ID: 1, desc: "Найдите на материнской плате 3-4-х контактный разъём.", videoName: ""),
    stepExplanation(stepID: 14, ID: 2, desc: "Подключите коннектор от кулера к материнской плате, совместив ключи разъёма.", videoName: ""),
    
    stepExplanation(stepID: 15, ID: 1, desc: "Найдите провода от корпуса, состоящие из нескольких двухконтактных разъёмов.", videoName: ""),
    stepExplanation(stepID: 15, ID: 2, desc: "Найдите соотвествующий ряд контактов на материнской плате.", videoName: ""),
    stepExplanation(stepID: 15, ID: 3, desc: "Подключите разъём кнопки питания, кнопки перезагрузки, индикаторы включения компьютера, работы дисков.", videoName: ""),
    stepExplanation(stepID: 15, ID: 4, desc: "Найдите провод USB 2.0 от корпуса.", videoName: ""),
    stepExplanation(stepID: 15, ID: 5, desc: "Найдите коннектор USB 2.0 на материнской плате.", videoName: ""),
    stepExplanation(stepID: 15, ID: 6, desc: "Подключите разъём в материнскую плату, правильно сопоставив пины на разъёме (такого коннектора может не быть в некоторых системах).", videoName: ""),
    stepExplanation(stepID: 15, ID: 7, desc: "Найдите провод HD Audio от корпуса.", videoName: ""),
    stepExplanation(stepID: 15, ID: 8, desc: "Найдите разъём HD Audio на материнской плате.", videoName: ""),
    stepExplanation(stepID: 15, ID: 9, desc: "Подключите разъём в материнскую плату, правильно сопоставив пины на разъёме.", videoName: ""),
    stepExplanation(stepID: 15, ID: 10, desc: "Найдите провод USB 3.0 от корпуса.", videoName: ""),
    stepExplanation(stepID: 15, ID: 11, desc: "Найдите разъём USB 3.0 на материнской плате.", videoName: ""),
    stepExplanation(stepID: 15, ID: 12, desc: "Подключите разъём в материнскую плату, совестив ключи на коннекторе и разъёме.", videoName: ""),
    
    stepExplanation(stepID: 16, ID: 1, desc: "Найдите SATA провод, который идёт в комплекте с материнской платой.", videoName: ""),
    stepExplanation(stepID: 16, ID: 2, desc: "Подключите коннектор к жёсткому диску.", videoName: ""),
    stepExplanation(stepID: 16, ID: 3, desc: "Подключите коннектор к материнской плате.", videoName: ""),
    
    stepExplanation(stepID: 17, ID: 1, desc: "Если у Вас модульный блок питания, то Вам будет необходимо подключить все последующие разъёмы ещё и в блок питания в соответствии с инструкцией, прилагаемой к нему.", videoName: ""),
    stepExplanation(stepID: 17, ID: 2, desc: "Подключение питания процессора.", videoName: ""),
    stepExplanation(stepID: 17, ID: 3, desc: "Найдите 8-ми пиновый коннектор от блока питания с названием 8 pin CPU.", videoName: ""),
    stepExplanation(stepID: 17, ID: 4, desc: "Найдите на материнской плате 8 пиновый разъём питания процессора (обычно он располагается сверху материнской платы, рядом с процессором).", videoName: ""),
    stepExplanation(stepID: 17, ID: 5, desc: "Подключите коннектор в разъём, сопоставив две защёлки.", videoName: ""),
    stepExplanation(stepID: 17, ID: 6, desc: "Подключение питания материнской платы.", videoName: ""),
    stepExplanation(stepID: 17, ID: 7, desc: "Найдите 24-х пиновый коннектор от блока питания.", videoName: ""),
    stepExplanation(stepID: 17, ID: 8, desc: "Найдите на материнской плате 24-х пиновый разъём питания.", videoName: ""),
    stepExplanation(stepID: 17, ID: 9, desc: "Подключите коннектор в разъём, сопоставив две защёлки.", videoName: ""),
    stepExplanation(stepID: 17, ID: 10, desc: "Подключите питание видеокарты.", videoName: ""),
    stepExplanation(stepID: 17, ID: 11, desc: "Найдите 8-ми пиновый коннектор от блока питания с названием 8 pin GPU.", videoName: ""),
    stepExplanation(stepID: 17, ID: 12, desc: "Найдите на видеокарте 6-ти или 8-ми пиновые разъёмы питания (их может быть несколько).", videoName: ""),
    stepExplanation(stepID: 17, ID: 13, desc: "Подключите коннектор в разъём, сопоставив две защёлки.", videoName: ""),
    stepExplanation(stepID: 17, ID: 14, desc: "Подключение питания накопителей.", videoName: ""),
    stepExplanation(stepID: 17, ID: 15, desc: "Найдите провод питания накопителей (его разъём похож на букву “г”).", videoName: ""),
    stepExplanation(stepID: 17, ID: 16, desc: "Найдите коннектор на Вашем накопителе.", videoName: ""),
    stepExplanation(stepID: 17, ID: 17, desc: "Подключите коннектор в правую часть разъёма до упора.", videoName: "")
]

struct StepsExplanation: View {
    var stepID: Int
    var stepParentName: String
    @State var player: AVPlayer = AVPlayer(url: Bundle.main.url(forResource: "testAnim", withExtension: "m4v")!)
    
    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.039, green: 0.039, blue: 0.039, opacity: 1.0)
                .ignoresSafeArea(edges: .all)
            VStack {
                ZStack {
                    Color.black
                    VideoPlayer(player: player)
                        .onChange(of: player, perform: { value in
                            player.play()
                        })
                }.frame(height: 420)
                .cornerRadius(20.0)
                .padding(.horizontal)
                .padding(.top)
                Form {
                    ForEach(0..<stepssExplanation.count) {
                        if stepssExplanation[$0].stepID == stepID {
                            SteppView(stepID: stepssExplanation[$0].stepID, preStepID: stepssExplanation[$0].ID, desc: stepssExplanation[$0].desc, videoName: stepssExplanation[$0].videoName, videoPl: $player)
                        }
                    }
                }
                .onAppear() {
                    UITableView.appearance().backgroundColor = UIColor(red: 0.039, green: 0.039, blue: 0.039, alpha: 1.0)
                }
            }.navigationBarTitle(Text("\(stepParentName)"), displayMode: .inline)
        }
    }
}

struct StepsExplanation_Previews: PreviewProvider {
    static var previews: some View {
        StepsExplanation(stepID: 1, stepParentName: "Подготовка материнской платы")
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
