//
//  SettingOptions.swift
//  spotify-a
//
//  Created by Alumno on 30/06/23.
//

import Foundation

struct SettingOptions: Hashable {
    let title: String
    let options : [Options]
}

struct Options: Hashable{
    let title: String
    let description: String
    let haveToggle: Bool
}
