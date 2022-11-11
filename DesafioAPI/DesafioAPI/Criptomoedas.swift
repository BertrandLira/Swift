//
//  Criptomoedas.swift
//  TableViewJSON
//
//  Created by Student on 21/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation
import UIKit

struct Criptomoeda: Decodable{
    var id: String?
    var rank: String?
    var symbol: String?
    var name: String?
    var suply: String?
    var maxSuply: String?
    var marketCapUsd: String?
    var volumeUsd24Hr: String?
    var priceUsd: String?
    var changePercent24Hr: String?
    var vwap24Hr: String?
    var explorer: String?
    
}

struct Criptomoedas: Decodable{
    var data: [Criptomoeda]
    var timestamp: Double
    
    
}
