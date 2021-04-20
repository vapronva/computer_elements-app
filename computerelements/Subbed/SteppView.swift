//
//  SteppView.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 20.04.2021.
//

import SwiftUI
import AVKit

struct SteppView: View {
    var stepID: Int
    var preStepID: Int
    var desc: String
    var videoName: String
    @Binding var videoPl: AVPlayer
    
    var body: some View {
        Button(action: {
            if videoName != "" {
                videoPl = AVPlayer(url: Bundle.main.url(forResource: "\(videoName)", withExtension: "m4v")!)
            }
        }) {
            Text("\(desc)")
        }.buttonStyle(PlainButtonStyle())
        .onAppear() {
            if preStepID == 1 || videoName != "" {
                videoPl = AVPlayer(url: Bundle.main.url(forResource: "\(videoName)", withExtension: "m4v")!)
            }
        }
    }
}

struct SteppView_Previews: PreviewProvider {
    static var previews: some View {
        SteppView(stepID: 1, preStepID: 1, desc: "Достаньте материнскую плату из коробки, вытащите её из антистатического пакета.", videoName: "testAnim", videoPl: Binding.constant(AVPlayer(url: Bundle.main.url(forResource: "testAnim", withExtension: "m4v")!)))
    }
}
