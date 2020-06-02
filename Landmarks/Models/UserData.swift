//
//  UserData.swift
//  Landmarks
//
//  Created by Md. Saber Hossain on 2/6/20.
//  Copyright © 2020 Md. Saber Hossain. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
