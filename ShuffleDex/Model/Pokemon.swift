//
//  Pokemon.swift
//  ShuffleDex
//
//  Created by Cassio Nicolai Bruzasco on 23/05/20.
//  Copyright © 2020 Cassio Nicolai Bruzasco. All rights reserved.
//

import Foundation

struct Pokemon: Decodable {
    let name: String
    let type: String
    let power: Int8
    let ability: String
    let image: String
}
