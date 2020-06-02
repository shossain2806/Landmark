//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Md. Saber Hossain on 2/6/20.
//  Copyright © 2020 Md. Saber Hossain. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
 
    @EnvironmentObject var userData: UserData
   
    var body: some View {
       NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(userData.landmarks){ landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite{
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            
            }
            .navigationBarTitle(Text("Landmarks"))
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone 11 Pro"], id: \.self) { deviceName in
            LandmarkList().environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
