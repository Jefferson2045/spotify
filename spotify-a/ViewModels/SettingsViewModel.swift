//
//  SettingsViewModel.swift
//  spotify-a
//
//  Created by Alumno on 30/06/23.
//

import Foundation

class SettingsViewModel : ObservableObject {
    
    @Published var settingOptions : [SettingOptions] = [
                
        SettingOptions(title: "Data Server", options: [
            Options(title: "Audio Quality",
                    description: "Sets your audio quality to low (equivalent to 24kbit/s) and disables artist canvases.",
                    haveToggle: true
                   )
        ]),
        SettingOptions(title: "Video Podcasts", options: [
            Options(title: "Save video podcasts as audio only.",
                    description: "Sets your audio quality to low (equivalent to 24kbit/s) and disables artist canvases.",
                    haveToggle: true
                   ),
            Options(title: "Stream audio only",
                    description: "Play video podcasts as audio only when not on WiFi.",
                    haveToggle: true
                   ),
        ])

    
    
    ]
    
}
