//
//  AppStoreLikeViewWithDesc.swift
//  computerelements
//
//  Created by Vladimir Malinovskiy on 30.03.2021.
//

import SwiftUI

struct ItemCarouselMainIntro: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var subtitle: String
    var image: String
}

struct AppStoreLikeViewWithDesc: View {
    var thisItem: ItemCarouselMainIntro
    
    var body: some View {
        ZStack {
            Image(thisItem.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width-64, height: .infinity)
                .clipped()
                .background(Color.white)
            VStack {
                HStack {
                    VStack(alignment: .leading){
                        Text("\(thisItem.subtitle)")
                            .font(.system(size: 18, weight: .bold, design: .default))
                            .foregroundColor(.init(white: 0.8)).opacity(0.6)
                        Text("\(thisItem.name)")
                            .font(.system(size: 36, weight: .bold, design: .default))
                            .foregroundColor(.white)
                    }.padding()
                    Spacer()
                }
                Spacer()
                HStack{
                    VStack(alignment: .leading) {
                        Text("\(thisItem.description)")
                            .lineLimit(2)
                            .font(.system(size: 18, weight: .bold, design: .default))
                            .foregroundColor(.init(white: 0.9)).opacity(0.8)
                    }.padding()
                    Spacer()
                }
            }
        }
        .cornerRadius(15)
        .foregroundColor(.black)
        .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1), radius: 11 , x: 0, y: 4)
    }
}

struct AppStoreLikeViewWithDesc_Previews: PreviewProvider {
    static var previews: some View {
        AppStoreLikeViewWithDesc(thisItem: ItemCarouselMainIntro(name: "Cum", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in.", subtitle: "CREATIVE", image: "cpuDefaultImage"))
    }
}
