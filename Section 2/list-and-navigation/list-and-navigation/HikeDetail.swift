//
//  HikeDetail.swift
//  list-and-navigation
//
//  Created by Dwi Randy Herdinanto on 07/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    let hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.imageUrl)
            .resizable()
                .aspectRatio(contentMode: .fit)
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Angels Landing", imageUrl: "tam", miles: 10.0))
    }
}
