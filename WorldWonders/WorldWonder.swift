//
//  WorldWonder.swift
//  WorldWonders
//
//  Created by Imac on 06.04.2023.
//

import Foundation
import SwiftyJSON

struct WorldWonder {
    var album = ""
    var artist = ""
    var favoriteSong = ""
    var tittle = ""
    var photo_artist = ""
    var background = ""
    
    init(json: JSON) {
        if let item = json["album"].string {
            album = item
        }
        if let item = json["artist"].string {
            artist = item
        }
        if let item = json["favoriteSong"].string {
            favoriteSong = item
        }
        if let item = json["tittle"].string {
            tittle = item
        }
        if let item = json["photo_artist"].string {
            photo_artist = item
        }
        if let item = json["background"].string {
                background = item
        }
      }
    }
